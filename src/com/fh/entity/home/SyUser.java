package com.fh.entity.home;

import java.util.Date;

/**
 * 会员实体类
 * @author zbb
 *
 */
public class SyUser {

	private String tSyUserId;// 主键 
	private String tSyAccount;//姓名
	private int tSyPassword;//密码
	private String tSyPayPassword;//付支密码
	private String tSyUserName;//姓名
	private String tSyNickName;//昵称
	private int tSySex;//性别
	private Date tSyDateOfBirth;//出生日期
	private String tSyCardId;//身份证号码
	private String tSyMail;//电子邮箱
	private String tSyPhone;//手机号
	private String tSyRemark;//备注
	private int tSyIntegral;//积分
	private String tSyImgPath;//头像地址
	private int tSyUserStatus;//用户状态  默认为：0：正常，1：冻结
	private int tSyAccountState;//账户状态  默认为：0：正常，1：锁定
	private String tSyRoleId;//角色id
	private Date tSyCreateTime;//用户创建时间  
	private Date tSyLastLoginTime;//上一次登录时间  默认为：1900-01-01
	private int tSyIsOnLine;//是否在线   默认：1：不在线（否）， 0：在线（是）
	private int tSyIsLimir;//是否受权限限制   默认：1：否 ，0：是
	private String tSyBz1;//注备1
	private String tSyBz2;//注备2
	private String tSyDelStatus;//删除标识（逻辑删除） 默认为0：未删除，1：已删除
	private Date tSyDelDate;//删除时间（逻辑删除）默认为：1900-01-01
	public String gettSyUserId() {
		return tSyUserId;
	}
	public void settSyUserId(String tSyUserId) {
		this.tSyUserId = tSyUserId;
	}
	public String gettSyAccount() {
		return tSyAccount;
	}
	public void settSyAccount(String tSyAccount) {
		this.tSyAccount = tSyAccount;
	}
	public int gettSyPassword() {
		return tSyPassword;
	}
	public void settSyPassword(int tSyPassword) {
		this.tSyPassword = tSyPassword;
	}
	public String gettSyPayPassword() {
		return tSyPayPassword;
	}
	public void settSyPayPassword(String tSyPayPassword) {
		this.tSyPayPassword = tSyPayPassword;
	}
	public String gettSyUserName() {
		return tSyUserName;
	}
	public void settSyUserName(String tSyUserName) {
		this.tSyUserName = tSyUserName;
	}
	public String gettSyNickName() {
		return tSyNickName;
	}
	public void settSyNickName(String tSyNickName) {
		this.tSyNickName = tSyNickName;
	}
	public int gettSySex() {
		return tSySex;
	}
	public void settSySex(int tSySex) {
		this.tSySex = tSySex;
	}
	public Date gettSyDateOfBirth() {
		return tSyDateOfBirth;
	}
	public void settSyDateOfBirth(Date tSyDateOfBirth) {
		this.tSyDateOfBirth = tSyDateOfBirth;
	}
	public String gettSyCardId() {
		return tSyCardId;
	}
	public void settSyCardId(String tSyCardId) {
		this.tSyCardId = tSyCardId;
	}
	public String gettSyMail() {
		return tSyMail;
	}
	public void settSyMail(String tSyMail) {
		this.tSyMail = tSyMail;
	}
	public String gettSyPhone() {
		return tSyPhone;
	}
	public void settSyPhone(String tSyPhone) {
		this.tSyPhone = tSyPhone;
	}
	public String gettSyRemark() {
		return tSyRemark;
	}
	public void settSyRemark(String tSyRemark) {
		this.tSyRemark = tSyRemark;
	}
	public int gettSyIntegral() {
		return tSyIntegral;
	}
	public void settSyIntegral(int tSyIntegral) {
		this.tSyIntegral = tSyIntegral;
	}
	public String gettSyImgPath() {
		return tSyImgPath;
	}
	public void settSyImgPath(String tSyImgPath) {
		this.tSyImgPath = tSyImgPath;
	}
	public int gettSyUserStatus() {
		return tSyUserStatus;
	}
	public void settSyUserStatus(int tSyUserStatus) {
		this.tSyUserStatus = tSyUserStatus;
	}
	public int gettSyAccountState() {
		return tSyAccountState;
	}
	public void settSyAccountState(int tSyAccountState) {
		this.tSyAccountState = tSyAccountState;
	}
	public String gettSyRoleId() {
		return tSyRoleId;
	}
	public void settSyRoleId(String tSyRoleId) {
		this.tSyRoleId = tSyRoleId;
	}
	public Date gettSyCreateTime() {
		return tSyCreateTime;
	}
	public void settSyCreateTime(Date tSyCreateTime) {
		this.tSyCreateTime = tSyCreateTime;
	}
	public Date gettSyLastLoginTime() {
		return tSyLastLoginTime;
	}
	public void settSyLastLoginTime(Date tSyLastLoginTime) {
		this.tSyLastLoginTime = tSyLastLoginTime;
	}
	public int gettSyIsOnLine() {
		return tSyIsOnLine;
	}
	public void settSyIsOnLine(int tSyIsOnLine) {
		this.tSyIsOnLine = tSyIsOnLine;
	}
	public int gettSyIsLimir() {
		return tSyIsLimir;
	}
	public void settSyIsLimir(int tSyIsLimir) {
		this.tSyIsLimir = tSyIsLimir;
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
	public String gettSyDelStatus() {
		return tSyDelStatus;
	}
	public void settSyDelStatus(String tSyDelStatus) {
		this.tSyDelStatus = tSyDelStatus;
	}
	public Date gettSyDelDate() {
		return tSyDelDate;
	}
	public void settSyDelDate(Date tSyDelDate) {
		this.tSyDelDate = tSyDelDate;
	}
}
