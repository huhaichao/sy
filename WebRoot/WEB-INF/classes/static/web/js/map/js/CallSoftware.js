
var AgentTerminalType = 2	//坐席终端类型(0 – 内线电话 1 – 外线电话手机 2 – VOIP电话 3 – VOIP PC)
var AgentServerIPPort = "10.1.1.1:7004"
var VOIPServerIPPort = "10.1.1.1:5060"	//voip ip和端口
//var AgentServerIPPort="202.98.133.178:7004"
//var VOIPServerIPPort= "202.98.133.178:5060"	//voip ip和端口
var CallTypeFlag = 0			//1-转移　2-三方通话
var strCallerNo = "66843188"
var HotlineNumberList = "8325086712"
var RegisterPassword = "111111"

function initClient() {
	

	
    //设置日志路径	
    QYIVPAgentClient.SetLogPath("D:/weblog/");

    //初始化(连接agnetserver,连接voipserver)
    var nResult = QYIVPAgentClient.AgentInit(AgentServerIPPort, AgentTerminalType, VOIPServerIPPort, 0);

    //alert("初始化结果:" + nResult);// + " AgentServerIP:" + AgentServerIP + ",AgentServerPort:" + AgentServerPort);
  
}

//客户端注册
function clientRegister() {

    //注册
    //QYIVPAgentClient.SetDebug(1,0,"");
    var nResult = QYIVPAgentClient.AgentRegister(5822, HotlineNumberList, RegisterPassword);

}

//客户端登录
function clientLogin() {

	//设置登录按钮为不可用
    var _agentCode;
    var extphone;
   
    document.all.loginBtn.disabled = true;
    _agentCode = document.all.agentCode.value;
    _agentCode = _agentCode + "$全宇测试人员";
    extphone = document.all.agentCode.value;;

    var nResult = QYIVPAgentClient.AgentLogin("5822$全宇测试", "61,测试组,0,1", extphone, document.all.ExtPhonePassword.value, _agentCode, 0, "");
  //  alert(nResult);
    //	alert("登录调用结果：" + nResult);
    if (nResult == "0")//登录成功
    {
       // document.getElementById("lab_state").innerHTML = "工号[" + extphone + "] 登录成功";
        document.getElementById('li_number').style.display = "none";
        document.getElementById('li_pwd').style.display = "none";
        document.getElementById('li_login').style.display = "none";
        document.getElementById('li_zx').style.display = "block";
        document.getElementById('li_sf').style.display = "block";
 
    }

    //else {
    //    //document.getElementById("lab_state").innerHTML = "登录失败";
    //}

}


//客户端注销
function clientLogout() {
    document.getElementById('li_number').style.display = "block";
    document.getElementById('li_pwd').style.display = "block";
    document.getElementById('li_login').style.display = "block";
    document.getElementById('li_zx').style.display = "none";
    document.getElementById('li_sf').style.display = "none";
    QYIVPAgentClient.AgentLogout();

}

//摘机
function clientOffHook() {
    QYIVPAgentClient.AgentClientAnswer(0);
}

//拒绝接听
function clientRejectHook() {
    QYIVPAgentClient.AgentClientAnswer(1);
}

//挂机
function clientHangup() {
    //alert("挂机");
    QYIVPAgentClient.AgentHangup();
}

//坐席置忙
function setClientBusy() {
    QYIVPAgentClient.AgentSetBusy();
}


//坐席置闲
function setClientFree() {
    QYIVPAgentClient.AgentSetFree();
}

//恢复通话
function setClientResumeWait() {
    QYIVPAgentClient.AgentRestore();
}

//呼叫保持
function setClientKeep() {
    QYIVPAgentClient.AgentKeep();
}

//发起转移
function clientMakeCallTrans() {
    //alert(document.all.inputBtn.value + " " + document.all.callTypeBtn.value);
    var strCalledNo = document.all.inputBtn.value;
    if (document.all.callTypeBtn.value == 1) {		//外线
        QYIVPAgentClient.AgentTransTel(0, strCallerNo, strCalledNo, "");
    } else if (document.all.callTypeBtn.value == 2) {	//内线
        QYIVPAgentClient.AgentTransAgent(0, strCalledNo);
    }
    CallTypeFlag = 1;
}

//取消转移
function clientCancelMakeCallTrans() {
    QYIVPAgentClient.AgentTransCancel();
    CallTypeFlag = 0;
}

//三方通话
function clientSanFangTalk() {
    var calltype;
    var strcalledno = document.all.inputBtn.value;
    if (document.all.callTypeBtn.value == 1)//外线
    {
        calltype = 1;
    } else if (document.all.callTypeBtn.value == 2)//内线
    {
        calltype = 3;
    }
    CallTypeFlag = 2;

    document.all.cancelSanFangTalk.disabled = false;
    QYIVPAgentClient.AgentConfStart(calltype, strCallerNo, strcalledno, "");
}

//取消三方通话
function clientcancelSanFangTalk() {
    QYIVPAgentClient.AgentConfStartCancel();
    CallTypeFlag = 0;
}

//确认
function clientconfirm() {
    if (document.all.clientStateLable.innerText == "坐席转接成功待确认")
        //	alert('clientconfirm:CallTypeFlag='+CallTypeflag);
        //	if(CallTypeFlag == 1)		//转移确认
    {
        QYIVPAgentClient.AgentTransConfirm(0);
    }
    else if (document.all.clientStateLable.innerText == "三方通话确认第三方")
        //	}else if(	CallTypeFlag == 2) 	//三方通话确认
    {
        QYIVPAgentClient.AgentConfConfirm(0);
    }
}

//发送dtmf字符串
function senddtmf() {
    var v = document.all.inputdtmf.value;
    QYIVPAgentClient.AgentSendDTMF(v);
}

//释放坐席端控件
function clientRelease() {
    QYIVPAgentClient.AgentRelease();
}

//清除号码除入
function cleanInput() {
    //document.all.inputBtn.value = "";
    document.getElementById('inputBtn').value = "";
}

function inputNum(a_num) {
   // alert(a_num);
    document.getElementById('inputBtn').value = document.getElementById('inputBtn').value + a_num;
    //QYIVPAgentClient.AgentSendDTMF(a_num);
}

//发起呼叫makeCall_id
function clientMakeCall() {
   // var m_strCalledNo = document.all.inputBtn.value;
    var m_strCalledNo = document.getElementById('inputBtn').value
    document.all.makecallBtn.disabled = true;
    QYIVPAgentClient.AgentMakeCallOut(strCallerNo, m_strCalledNo, "", "");
}

//外呼挂机与取消
function clientCancelMakeCall() {
    QYIVPAgentClient.AgentMakeCallOutCancel();
}

function getOtherFlagDesc(nFlag) {
    //102012-成功;
    //102013-失败
    switch (nFlag) {
        case 102012:
            opResult = "操作成功";
            break;
        case 102013:
        default:
            opResult = "操作失败";
            break;
    }
    return nFlag
}

function getMakeCallFlagDesc(nFlag) {
    //根据呼叫结果，显示
    //msg.p3返回呼叫结果：
    //99-脚本开始发起呼叫；
    //0-被叫应答，成功；
    //1-无人接听；2-被叫市话忙；3-被叫长话忙；
    //4-拥塞；5-空号；6-关机；
    //7-不在服务区；8-停机；9-呼叫改发； 
    //10-线路故障；
    //98-接通,对方挂机；
    //101-呼叫非法,系统正在呼叫，新的呼叫没有处理
    //102-呼叫非法,坐席状态不为空闲，新的呼叫没有处理
    //-1：其他错误情况；
    opResult = "";
    switch (nFlag) {
        case 0:
            opResult = "呼叫成功";
            break;
        case 1:
            opResult = "无人接听";
            break;
        case 2:
            opResult = "被叫市话忙";
            break;
        case 3:
            opResult = "被叫长话忙";
            break;
        case 4:
            opResult = "拥塞";
            break;
        case 5:
            opResult = "空号";
            break;
        case 6:
            opResult = "关机";
            break;
        case 7:
            opResult = "不在服务区";
            break;
        case 8:
            opResult = "停机";
            break;
        case 9:
            opResult = "呼叫转移";
            break;
        case 10:
            opResult = "线路故障";
            break;
        case 98:
            opResult = "接通,对方挂机";
            break;
        case 99:
            opResult = "脚本开始呼叫";
            break;
        case 101:
            opResult = "呼叫非法,系统正在呼叫，新的呼叫没有处理";
            break;
        case 102:
            opResult = "呼叫非法,坐席状态不为空闲，新的呼叫没有处理";
            break;
        case -1:
        default:
            opResult = "其他错误";
            break;
    }
    return opResult;
}

function setAgentState() {
    var nAgentState = QYIVPAgentClient.CurrentState;
    switch (nAgentState) {
        case 0:
            document.all.clientStateLable.innerText = "坐席不可用";
            document.all.loginBtn.disabled = false;						//登录按钮
            document.all.logoutBtn.disabled = true;					//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = true;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 
            document.all.confirm.disabled = true;

            break;
        case 1:
            document.all.clientStateLable.innerText = "坐席空闲";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = false;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = true;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = false;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = false;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 
            document.all.confirm.disabled = true;

            break;
        case 2:
            document.all.clientStateLable.innerText = "坐席置忙中";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = false;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = true;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = false;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 
            document.all.confirm.disabled = true;
            break;
        case 3:
            document.all.clientStateLable.innerText = "坐席抢接中";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = false;		//恢复通话
            document.all.makecallBtn.disabled = true;					//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 4:
            document.all.clientStateLable.innerText = "坐席被选出队列";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = true;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 5:
            document.all.clientStateLable.innerText = "坐席来电振铃";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = false;					//接听按钮
            document.all.hangupBtn.disabled = true;					//挂机按钮
            document.all.rejectOffHookBtn.disabled = false;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;					//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;//确认
            break;
        case 6:
            document.all.clientStateLable.innerText = "坐席通话中";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = false;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = false;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = false;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 					
            document.all.confirm.disabled = true;
            break;
        case 7:
            document.all.clientStateLable.innerText = "坐席转接中";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;					//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;					//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = false;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 8:
            document.all.clientStateLable.innerText = "坐席转接成功待确认";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = false;	//取消转移 			
            document.all.confirm.disabled = false;
            break;
        case 9:
            document.all.clientStateLable.innerText = "坐席保持";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = false;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 10:
            document.all.clientStateLable.innerText = "坐席会议中";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = false;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = false;
            break;
        case 11:
            document.all.clientStateLable.innerText = "坐席话后处理中";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;

            break;
        case 12:
            document.all.clientStateLable.innerText = " 坐席输入被叫号码状态";
            break;
        case 13:
            document.all.clientStateLable.innerText = "坐席发起呼叫";

            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 14:
            document.all.clientStateLable.innerText = "坐席管理状态";
            break;
        case 15:
            document.all.clientStateLable.innerText = "坐席班长监听";
            break;
        case 16:
            document.all.clientStateLable.innerText = "坐席班长强插";
            break;
        case 17:
            document.all.clientStateLable.innerText = "客户端pc登陆成功后，等待电话登陆";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = false;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = true;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 18:
            document.all.clientStateLable.innerText = "等待脚本设置成Free";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;
            break;
        case 19:
            document.all.clientStateLable.innerText = "被监听";
            break;
        case 20:
            document.all.clientStateLable.innerText = "被强插";
            break;
        case 21:
            document.all.clientStateLable.innerText = "三方通话发起邀请";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.allcancelSanFangTalk.disabled = false;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;

            break;
        case 22:
            document.all.clientStateLable.innerText = "三方通话确认第三方";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = false;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = false;

            break;
        case 23:
            document.all.clientStateLable.innerText = "三方通话主持人";
            break;
        case 24:
            document.all.clientStateLable.innerText = "三方通话被确认通话中";
            document.all.loginBtn.disabled = true;						//登录按钮
            document.all.logoutBtn.disabled = true;						//注销按钮
            document.all.offHookBtn.disabled = true;					//接听按钮
            document.all.hangupBtn.disabled = false;						//挂机按钮
            document.all.rejectOffHookBtn.disabled = true;		//拒接按钮
            document.all.setBusyBtn.disabled = true;					//置忙按钮
            document.all.setFreeBtn.disabled = true;					//置闲按钮
            document.all.setWaitBtn.disabled = true;					//保挂按钮
            document.all.setWaitResumeBtn.disabled = true;		//恢复通话
            document.all.makecallBtn.disabled = true;				//呼叫按钮
            document.all.sanFangTalk.disabled = true;		//三方通话 
            document.all.cancelSanFangTalk.disabled = true;//取消三方通话
            document.all.makeCallTrans.disabled = true;	//转移
            document.all.cancelMakeCallTrans.disabled = true;	//取消转移 			
            document.all.confirm.disabled = true;

            break;
        case 25:
            document.all.clientStateLable.innerText = "三方通话成员";
            break;
        case 26:
            document.all.clientStateLable.innerText = "电话端登陆成功后，等待pc登陆";
            break;
        case 27:
            document.all.clientStateLable.innerText = "电话坐席正在呼叫第一被叫";
            break;
        case 28:
            document.all.clientStateLable.innerText = "会议状态";
            break;
    }
}

function AgentMeetingStart() {
    QYIVPAgentClient.AgentMeetingStart('');
}

function AgentMeetingAdd() {
    var strlist = document.all.MeetingNumberList.value;
    QYIVPAgentClient.AgentMeetingAdd(strlist);
}

function AgentMeetingUpdateMode() {
    var strnumber = document.all.MeetingNumber.value;
    var imode = document.all.MeetingMode.value;
    QYIVPAgentClient.AgentMeetingUpdateMode(strnumber, imode);
}

function AgentMeetingHangup() {
    var strnumber = document.all.MeetingNumber2.value;
    QYIVPAgentClient.AgentMeetingHangup(strnumber);
}

function AgentMeetingEnd() {
    QYIVPAgentClient.AgentMeetingEnd();
}