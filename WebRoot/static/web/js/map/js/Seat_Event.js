var myDate = new Date(); 
var State = 0;   
var Type = 0;    
var oldType = 0;  

var ConfJoinExCall = "";

var peoply_type = 0;
var sf_type = 0;

var RecordingFile = "";

var IntervalRestTime; var DayIntervalRestTime; var CountIntervalRestTime; var RestTime = 0; var CountRestTime = 0;
var SubmitRestTime = 0; var DayRestTime = 0; var SurplusRestTime = 0; var IsUpRest = false;

function ReleaseCall() {
    try {
        setTime();
        State = ReleaseCallEx();
        if (State == 0) {
            State = StopRecord();
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = 0;
            }
        }
        else {
            alert(GetPromptByErrorCode(State));
        }
        LoadButton();
    }
    catch (e) {
        Type = 0;
        alert("挂断电话失败，请联系管理员！" + e.toString());
    }
}

function SayBusy_new()
{
    State = Say_Busy();
    if (State != 0) {
        alert(GetPromptByErrorCode(State));
    }
    else {
        alert("示忙成功！");
    }
}
function btnSay() {
    State = Say_Free();
    if (State != 0) {
        alert(GetPromptByErrorCode(State));
    }
    else {
        alert("示闲成功！");
    }
}
function setTime() {
    var theTime = GetCurrentTime();
    if (getExplorer() == "ie") {
        if (window.frames["frame3"].document.getElementById('txtCalledDate').value == "") {
            window.frames["frame3"].document.getElementById('txtCalledDate').value = theTime;
        }

    }
    else {
        if (frame3.window.$("#txtCalledDate").val() == "") {
            frame3.window.$("#txtCalledDate").val(theTime);
        }
    }
}
function Dialout1() {
    try {
        var calloutParam = { MediaType: 5, Caller: LoginInfo["User"]["SModel"]["PhoneNum"], Called: '', Pilot: '', Mode: 0, SkillID: 1, Param: '', DetectFlag: 0 };

        var bl = false;
        if (!istell($("#txtKeyWord_phonebook").val())) {
            calloutParam.Called = $("#txtKeyWord_phonebook").val();
            State = CallOut(calloutParam);
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = 2;
                var BeginRecordParam = { RecordMode: 1, sStorage: '', MediaType: 5 }
                BeginRecordParam.sStorage = "";
                State = BeginRecord(BeginRecordParam);
                if (State != 0) {
                    alert(GetPromptByErrorCode(State));
                }
            }
        }
        else {
            alert("请输入正确的电话号码！");
            Type = 0;
        }
        LoadButton();
    }
    catch (e) {
        Type = 0;
        alert("对外呼出失败，请联系管理员！" + e.toString());
        $.dialog.get['divClass'].hide();
    }
}
function AgentSendCall() {
    if ($("#txtKeyWord_ercibohao").val() == "") {
        alert("请输入二次拨号的数据");
        return;
    }
    var result = AgentSendDTMF($("#txtKeyWord_ercibohao").val());
    if (result != 0) {
        alert(GetPromptByErrorCode(result));
    }
}
function TurnOut() {
    try {
        State = TransOutCall($("#txt_TurnOut").val());
        if (State != 0) {
            alert(GetPromptByErrorCode(State));
        }
    }
    catch (e) {
        Type = 0;
        alert("转外线，请联系管理员！" + e.toString());
        $.dialog.get['div_TurnOut'].hide();
    }

}

function Dialout2() {
    try {
        var CallInnerParam = { DesktopNo: "", MediaType: 5 }

        if ($("#txtKeyWord_seat")) {
            State = CallInnerEx($("#txtKeyWord_seat").val());
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = 3;
            }
        }
        else {
            alert("请输入您要呼出的内部坐席号码！");
            Type = 0;
        }
        LoadButton();
    }
    catch (e) {
        Type = 0;
        alert("对内呼出失败，请联系管理员！" + e.toString());
    }
}

function Mute() {
    try {
        if ($("#btn_Mute").attr("value") == "开始静音") {
            State = BeginMuteUser();
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                oldType = Type;   
                Type = 4;
                $("#btn_Mute").attr("value", "取消静音");
            }
        }
        else {
            State = EndMuteUser();
            if (State !== 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = oldType;        
                $("#btn_Mute").attr("value", "开始静音");
            }
        }
    }
    catch (e) {
        Type = 0;
        alert("开始静音或结束静音失败，请联系管理员！" + e.toString());
    }

}

function Keep() {
    try {
        if ($("#btn_Keep").attr("value") == "呼叫保持") {
            State = Hold();
            if (State == 0) {
                oldType = Type;   
                Type = 6;
                peoply_Type = 1;
                $("#btn_Keep").attr("value", "取消保持");
            }
            else {
                alert(GetPromptByErrorCode(State));
            }
        }
        else {
            
            var Callid = GetCALLIDByCallNum(Phone.GetCallerNo(), Phone.GetCalledNo());
            
            State = CanceHold(Callid);
            if (State == 0) {
                Type = oldType;
                $("#btn_Keep").attr("value", "呼叫保持");
            }
            else {
                alert(GetPromptByErrorCode(State));
            }
        }
    }
    catch (e) {
        Type = 0;
        alert("呼叫保持或取消保持失败，请联系管理员！" + e.toString());
    }
}

function btnRest() {
    try {
        oldType = Type;
        $("#txtTime").val("");
        window.top.on_mask();
        $.dialog({
            title: '开始休息',
            content: document.getElementById('div_Rest'),
            lock: true,
            opacity: 0,
            width: 290,
            height: 138,
            effect: 'i-super-scale',
            hide: function () {
                window.top.off_mask();
            }
        });
        GetDayRestTime();
        SurplusRestTime = CountRestTime - DayRestTime;
        var SurplusMinute = 0;
        var SurplusSeconds = 0;
        SurplusMinute = parseInt(SurplusRestTime / 60);
        SurplusSeconds = SurplusRestTime - SurplusMinute * 60;
        $("#span_dayRestTime_p").html(SurplusMinute + "分" + SurplusSeconds + "秒");
    }
    catch (e) {
        Type = 0;
        alert("开始休息或者结束休息失败，请联系管理员！" + e.toString());
    }
}
function RestSubmit() {
    try {
        if (!$("#txtTime").val()) {
            alert("请输入您要休息的时间！");
        }
        else {
            RestTime = 0;
            $("#span_RestTime").html("");
            $("#span_DayRestTime").html("");
            $("#span_CountRestTime").html("");


            var RestType = $("#select_Rest").find("option:selected").attr("id");
            SubmitRestTime = $("#txtTime").val();
            if (RestType == 0) {
                SubmitRestTime = $("#txtTime").val() * 60;
            }
            if (DayRestTime >= CountRestTime) {
                alert("您当天的休息时间已经用完，无法休息哦！");
            }
            else {
                State = Rest(SubmitRestTime);
                if (State != 0) {
                    alert(GetPromptByErrorCode(State));
                }
                else {
                    Type = 8;
                    $(".i-close").click();
                    window.top.on_mask();
                    $.dialog({
                        title: '开始休息',
                        content: document.getElementById('div_RestTime'),
                        lock: true,
                        opacity: 0,
                        width: 350,
                        height: 236,
                        effect: 'i-super-scale',
                        hide: function () {
                            window.top.off_mask();
                        },
                        btn: {
                            ok: {
                                val: '取消休息',
                                type: 'blue',
                                click: function (btn) {
                                    UpdateRestTime();
                                }
                            },
                        }
                    });

                    var Minute = 0;
                    var Seconds = 0;
                    Minute = parseInt(DayRestTime / 60);
                    Seconds = DayRestTime - Minute * 60;
                    $("#span_DayRestTime").html(Minute + "分" + Seconds + "秒");

                    IntervalRestTime = setInterval(SetIntervalRestTime, 1000);

                }


            }
        }
    }
    catch (e) {
        Type = 0;
        alert("开始休息和结束休息失败，请联系管理员！" + e.toString());
    }
}

function SetIntervalRestTime() {
    if (RestTime == SubmitRestTime) {
        Type = 0;
        UpdateRestTime();
    }
    else if (RestTime < SubmitRestTime) {
        var Minute = 0;
        var Seconds = 0;
        RestTime += 1;
        Minute = parseInt(RestTime / 60);
        Seconds = RestTime - Minute * 60;
        if (Minute > 0) {
            $("#span_RestTime").html(Minute + "分" + Seconds + "秒");
        }
        else {
            $("#span_RestTime").html(Seconds + "秒");
        }

        DayRestTime += 1;
        var dayMinute = 0;
        var daySeconds = 0;
        dayMinute = parseInt(DayRestTime / 60);
        daySeconds = DayRestTime - dayMinute * 60;

        if (dayMinute > 0) {
            $("#span_DayRestTime").html(dayMinute + "分" + daySeconds + "秒");
        }
        else {
            $("#span_DayRestTime").html(daySeconds + "秒");
        }

        SurplusRestTime = CountRestTime - DayRestTime;
        var SurplusMinute = 0;
        var SurplusSeconds = 0;
        SurplusMinute = parseInt(SurplusRestTime / 60);
        SurplusSeconds = SurplusRestTime - SurplusMinute * 60;

        if (SurplusMinute > 0) {
            $("#span_CountRestTime").html(SurplusMinute + "分" + SurplusSeconds + "秒");
        }
        else {
            $("#span_CountRestTime").html(SurplusSeconds + "秒");
        }
    }
    else {
        Type = 0;
        UpdateRestTime();
    }
}

function GetCountRestTime() {
    $.ajax('/Handler/Admin/Rest_Handler.ashx', {
        type: 'post',
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetCountRestTime"
        },
        success: function (data) {
            CountRestTime = data;
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });

}

function GetDayRestTime() {
    $.ajax('/Handler/Admin/Rest_Handler.ashx', {
        type: 'post',
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "GetModel"
        },
        success: function (data) {
            DayRestTime = data["RestTime"];
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });

}

function UpdateRestTime() {
    $.ajax('/Handler/Admin/Rest_Handler.ashx', {
        type: 'post',
        async: false,
        cache: false,
        dataType: 'json',
        data: {
            Action: "Update",
            RestTime: RestTime
        },
        success: function (data) {

            clearInterval(SetIntervalRestTime);
            Type = 0;
            State = CancelRest();
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = oldType;
            }
        },
        error: function (data) {
            alert(data.responseText);
        },
        complete: function (data) {
            LoginError(data.responseText);
        }
    });
}
function btn_TransToAgent() {
    try {
        var transToAgentParam = { MediaType: 5, TransType: 3, DestWorkNo: $("#txt_Seat").val() };
        if ($("#txt_Seat").val()) {
            State = TransToAgent(transToAgentParam);
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = 0;
                LoadButton();
                //$.dialog.get['div_Seat'].hide();
            }
        }
        else {
            alert("请您选择或者输入您要转到的坐席号码！");
        }
    }
    catch (e) {
        Type = 0;
        alert("转坐席失败，请联系管理员！" + e.toString());
    }
}

function btn_TranstoIVR() {
    try {
        var TransTOIVRParam = { MediaType: 5, TransType: 3, AccessCode: 0 };

        TransTOIVRParam.AccessCode = $("#transIVR").find("option:selected").attr("value");
        if (TransTOIVRParam.AccessCode != 0) {
            if (TransTOIVR(TransTOIVRParam) != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                Type = 0;
            }
        }
        else { alert("请选择正确的IVR串码！") }
    }
    catch (e) {
        Type = 0;
        alert("转IVR失败，请联系管理员！" + e.toString());
    }

}

function Dialout3() {
    try {
        var ConfJoinExParam = { MediaType: 5, Caller: '', Called: '', Pilot: '', Mode: 0, SkillID: 1, Param: '', DetectFlag: 0 };
        ConfJoinExParam.Called = $("#txtKeyWord_sf").val();
        State = CallOut(ConfJoinExParam);
        if (State != 0) {
            alert(GetPromptByErrorCode(State));
        }
        else {
                
            ConfJoinExCall = ConfJoinExParam.Called;
            Type = 12;
            $.dialog.get['dialog_sf'].hide();
            $("#big-link").click();
            window.top.on_mask();

        }
        LoadButton();
    }
    catch (e) {
        Type = 0;
        alert("开始静音或结束静音失败，请联系管理员！" + e.toString());
    }
}
function sf_through() {
    try {
        if ($("#sf_through").html() == "保持") {
            state = Hold();
            if (state != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                $("#sf_through").html("接通");
                $("#top_line").attr("src", "/images/Plugins/top_h_line.png");
            }
        }
        else {
            var Callid = getKeepId(true, ConfJoinExCall);
            State = ConfJoinEx(Callid);
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                $("#sf_through").html("保持");
                $("#top_line").attr("src", "/images/Plugins/top_g_line.png");
            }
        }
    }
    catch (e) {
        Type = 0;
        alert("接通三方失败，请联系管理员！" + e.toString());
    }
}
function sf_hangup() {
    try {
        var Callid = getKeepId(true, sfPhone);
        State = relaseThreeCall(Callid);
        if (State != 0) {
            alert(GetPromptByErrorCode(State));
        }
        else {
            $(".close-reveal-modal").click();
        }
    }
    catch (e) {
        Type = 0;
        alert("挂断三方失败，请联系管理员！" + e.toString());
    }
}

function people_through() {
    try {
        if ($("#people_through").html() == "保持") {
            state = Hold();
            if (state != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                $("#people_through").html("接通");
                $("#left_line").attr("src", "/images/Plugins/left_h_line.png");
            }
        }
        else {
            var Callid = getKeepId(true, GetPhone());
            State = ConfJoinEx(Callid);
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
            else {
                $("#people_through").html("保持");
                $("#left_line").attr("src", "/images/Plugins/left_g_line.png");
            }
        }
    }
    catch (e) {
        Type = 0;
        alert("接通市民热线失败，请联系管理员！" + e.toString());
    }
}
function people_hangup() {
    try {
        var Callid = getKeepId(true, GetPhone());
        State = relaseThreeCall(Callid);
        if (State != 0) {
            alert(GetPromptByErrorCode(State));
        }
        else {
            $(".close-reveal-modal").click();
        }
    }
    catch (e) {
        Type = 0;
        alert("接通市民热线失败，请联系管理员！" + e.toString());
    }
}

function GetPhone() {
    var phone = "";
    if (getExplorer() == "ie") {
        phone = window.frames["frame3"].document.getElementById('txtCallingPhone').value;
    }
    else {
        frame3.window.$("#txtCallingPhone").val();
    }
    return phone;
}

function Exhale(pCode, sPhone) {
    try {
        var calloutParam = { MediaType: 5, Caller: LoginInfo["User"]["SModel"]["PhoneNum"], Called: '', Pilot: '', Mode: 0, SkillID: 1, Param: '', DetectFlag: 0 };

        var bl = false;

        calloutParam.Called = sPhone;
        State = CallOut(calloutParam);
        if (State != 0) {
            alert(GetPromptByErrorCode(State));
        }
        else {
            Type = 2;
            SonCode = pCode;
            SonPhone = sPhone;
            var BeginRecordParam = { RecordMode: 1, sStorage: '', MediaType: 5 }
            BeginRecordParam.sStorage = "";
            State = BeginRecord(BeginRecordParam);
            if (State != 0) {
                alert(GetPromptByErrorCode(State));
            }
        }
        LoadButton();
    }
    catch (e) {
        Type = 0;
        alert("对外呼出失败，请联系管理员！" + e.toString());
    }
}

function TwoExhale(twoNum) {
    if (twoNum == "") {
        alert("请输入二次拨号的数据");
        return;
    }
    var result = AgentSendDTMF(twoNum);
    if (result != 0) {
        alert(GetPromptByErrorCode(result));
    }
}