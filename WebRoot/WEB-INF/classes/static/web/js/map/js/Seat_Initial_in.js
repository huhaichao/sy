var tel = "";
var SonCode = "",SonPhone="";
//设置初始化参数
var initialParam = {
    CcsID: LoginInfo["User"]["SModel"]["CcsId"],
    MyID: LoginInfo["User"]["SModel"]["MyId"],
    ServerIP: LoginInfo["User"]["SModel"]["ServerIp"],
    Pwd: LoginInfo["User"]["SModel"]["PassWord"],
    WorkNo: LoginInfo["User"]["SModel"]["WorkNo"],
    BackCcsIP: LoginInfo["User"]["SModel"]["BackCcsip"],
    AgentType: LoginInfo["User"]["SModel"]["AgentType"],
    UAPIP: ""
}
//插件初始化
function ocx_Initial() {
    try {
        State = Initial(initialParam);
        if (State != 0) {
            alert(GetPromptByErrorCode(State));
        }
        else {
            ocx_SignIn();
        }
    }
    catch (e) {
        alert("坐席签入失败，请联系管理员！");
    }
}

//签入初始化参数
var signInExParam = {
    MediaServer: "TTT",
    AgentType: LoginInfo["User"]["SModel"]["AgentType"],
    //TelNum: "8002"
    TelNum: LoginInfo["User"]["PhoneNum"]
}
//坐席签入
function ocx_SignIn() {
    State = SignIn(signInExParam);
    if (State != 0) {
        alert(GetPromptByErrorCode(State));
    }
    else {
        PageLoadNum = 1;
        Listen();
    }
}
//监听事件，监听是否成功接入电话
////预置条件：1：调用Initial方法进行初始化 2：调用SignInEx签入 
function Listen() {
    try {
        Phone.attachEvent("OnAnswerSuccess", function () {
            if (Type == 0) {
                var BeginRecordParam = { RecordMode: 1, sStorage: '', MediaType: 5 }
                BeginRecordParam.sStorage = "";
                State = BeginRecord(BeginRecordParam);
                if (State != 0) {
                    alert(GetPromptByErrorCode(State));
                }
                else {
                    fr.TabControlAppend(OperatorNumber.ProjectInsert, '工单登记', '/YWSL/OperatorProject.html?Method=0');
                    Type = 1;
                    tel = Phone.GetCallerNo();
                    LoadButton();
                }
            }
        });
        Phone.attachEvent("OnReleaseExSuccess", function (p1) {
            Type = 0;
            StopRecord();
            LoadButton();
            Say_Free();
            if($("#btn_Keep").attr("value")=="取消保持"){
                peoply_Type = 0;
                $("#btn_Keep").attr("value", "呼叫保持");
            }
        });
        Phone.attachEvent("OnRecordSuccessEx", function (a, b, c, SelfRecFileName) {
            try{
                $("#txt_filepath").val(SelfRecFileName);

                if (Type != 1) {
                    SonCode = $("#txt-CallOut-Code").val();
                    switch (Type) {
                        case 2:
                            SonPhone = $("#txtKeyWord_phonebook").val();
                            SonCode = $("#txt-CallOut-Code").val();
                            break;
                        case 3:
                            SonPhone = $("#txtKeyWord_seat").val();
                            SonCode = "";
                            break;
                    }
                    $.ajax('/Handler/YWSL/ProjectFile_Handler.ashx', {
                        type: 'post',
                        async: false,
                        cache: false,
                        dataType: 'json',
                        data: {
                            Action: "Insert",
                            AudioUrl: SelfRecFileName,
                            Code: SonCode,
                            Called_Phone: SonPhone,
                            Type: Type
                        },
                        success: function (data) {
                            $("#txt-CallOut-Code").val("");
                            SonCode = "";
                            SonPhone = "";
                        },
                        error: function (data) {
                            $("#txt-CallOut-Code").val("");
                        }
                    });
                }
            }
            catch (e) {
                alert(e.toString());
            }
        });
        Phone.attachEvent("OnSayFreeFailure", function () {
        });
    }
    catch (e) {
        alert("坐席签入失败，请联系管理员！");
    }
}
