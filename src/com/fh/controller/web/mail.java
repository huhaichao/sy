package com.fh.controller.web;

import com.fh.util.mail.MailSenderInfo;
import com.fh.util.mail.SimpleMailSender;

public class mail {

	public static void main(String[] args) {
	
		// TODO Auto-generated method stub
		try{
		     SimpleMailSender sms=new SimpleMailSender();
		     MailSenderInfo mailInfo = new MailSenderInfo();    
		     mailInfo.setMailServerHost("smtp.163.com");    
		     mailInfo.setMailServerPort("25");    
		     mailInfo.setValidate(true);    
		     mailInfo.setUserName("itvbym@163.com");    
		     mailInfo.setPassword("091106");//您的邮箱密码    
		     mailInfo.setFromAddress("itvbym@163.com");    
		     mailInfo.setToAddress("yumeng@ysstech.com");    
		     mailInfo.setSubject("6886888");    
		     mailInfo.setContent("6666668886");    
		     //这个类主要来发送邮件   		 
		     sms.sendTextMail(mailInfo);//发送文体格式    
		    	// return sms.sendHtmlMail(mailInfo);//发送html格式   
		   
		//sms.sendMail("wer", "sdf", "1", "yumeng@ysstech.com");
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
