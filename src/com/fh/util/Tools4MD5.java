package com.fh.util;

/**
 * 生成MD5密码
 */
import org.apache.shiro.crypto.hash.SimpleHash;

public class Tools4MD5 {

	public static void main(String[] args) {
		String un = "00006";
		String pd = "123";
		System.out.println(toMD5Password(un,pd));
	}
	
	public static String toMD5Password(String un, String pd){
		return new SimpleHash("SHA-1", un, pd).toString();	//密码加密
	}

}
