package com.fh.entity.home;

/**
 * 日志实体
 * @author zbb
 *
 */
public class SyLog {

	private int tSyLogId;// 主键
	private String tSyUserName;// 户名用
	private String tSyLogIp;// 登录IP
	private String tSyType;// 操作类型
	private String tSyOperation;// 操作内容
	private String tSyCreateDate;// 操作时间
	private String tSyBz1;// 备注1
	private String tSyBz2;// 备注2

	public int gettSyLogId() {
		return tSyLogId;
	}

	public void settSyLogId(int tSyLogId) {
		this.tSyLogId = tSyLogId;
	}

	public String gettSyUserName() {
		return tSyUserName;
	}

	public void settSyUserName(String tSyUserName) {
		this.tSyUserName = tSyUserName;
	}

	public String gettSyLogIp() {
		return tSyLogIp;
	}

	public void settSyLogIp(String tSyLogIp) {
		this.tSyLogIp = tSyLogIp;
	}

	public String gettSyType() {
		return tSyType;
	}

	public void settSyType(String tSyType) {
		this.tSyType = tSyType;
	}

	public String gettSyOperation() {
		return tSyOperation;
	}

	public void settSyOperation(String tSyOperation) {
		this.tSyOperation = tSyOperation;
	}

	public String gettSyCreateDate() {
		return tSyCreateDate;
	}

	public void settSyCreateDate(String tSyCreateDate) {
		this.tSyCreateDate = tSyCreateDate;
	}

	public String gettSyBz1() {
		return tSyBz1;
	}

	public void settSyBz1(String tSyBz1) {
		this.tSyBz1 = tSyBz1;
	}

	public String gettSyBz2() {
		return tSyBz2;
	}

	public void settSyBz2(String tSyBz2) {
		this.tSyBz2 = tSyBz2;
	}

}
