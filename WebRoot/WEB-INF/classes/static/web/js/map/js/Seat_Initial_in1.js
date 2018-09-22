var tel = "";
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
            //alert("进入");
            var time = myDate.getFullYear() + myDate.getMonth() + myDate.getDate()
              + myDate.getHours() + myDate.getMinutes() + myDate.getSeconds() + myDate.getMilliseconds();

            //alert("初始化time参数");
            //初始化录音参数 
            var BeginRecordParam = { RecordMode: 1, sStorage: '', MediaType: 5 }

            //参数赋值
            RecordingFile = time + ".dat";
            BeginRecordParam.sStorage = RecordingFile;
            //alert("初始化录音参数");
            //调用开始录音方法
            State = BeginRecord(BeginRecordParam);
            //alert("调用录音执行后");
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = 1;
                fr.TabControlAppend(OperatorNumber.ProjectInsert, '工单登记', '/YWSL/OperatorProject.html?Method=0');
                tel = Phone.GetCallerNo();               
                LoadButton();
            }
        });
        Phone.attachEvent("OnReleaseExSuccess", function (p1) {
            Type = 0;
            StopRecord();//停止录音
            LoadButton();
        });
        Phone.attachEvent("OnRecordSuccessEx", function (a, b, c, SelfRecFileName) {
            //var filename = SelfRecFileName;//SelfRecFileName为录音文件地址
            if (getExplorer() == "ie") {
                window.frames["frame3"].FileName = SelfRecFileName;
            }
            else {
                frame3.window.FileName = SelfRecFileName;
               
            }
        });
    }
    catch (e) {
        alert("坐席签入失败，请联系管理员！");
    }
}
