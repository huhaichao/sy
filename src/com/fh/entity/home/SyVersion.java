package com.fh.entity.home;

import java.util.Date;

/**
 * 版本实体类
 * @author zbb
 *
 */
public class SyVersion {

	private int tSyVersionId;// 主键
	private String tSyVersionNumber;// 版本号
	private String tSyCreateUser;// 创建人
	private Date tSyCreateDate;// 创建日期
	private String tSyCreateInfo;// 升级信息
	private String tSyBz1;// 备注1
	private String tSyBz2;// 备注2

	public int gettSyVersionId() {
		return tSyVersionId;
	}

	public void settSyVersionId(int tSyVersionId) {
		this.tSyVersionId = tSyVersionId;
	}

	public String gettSyVersionNumber() {
		return tSyVersionNumber;
	}

	public void settSyVersionNumber(String tSyVersionNumber) {
		this.tSyVersionNumber = tSyVersionNumber;
	}

	public String gettSyCreateUser() {
		return tSyCreateUser;
	}

	public void settSyCreateUser(String tSyCreateUser) {
		this.tSyCreateUser = tSyCreateUser;
	}

	public Date gettSyCreateDate() {
		return tSyCreateDate;
	}

	public void settSyCreateDate(Date tSyCreateDate) {
		this.tSyCreateDate = tSyCreateDate;
	}

	public String gettSyCreateInfo() {
		return tSyCreateInfo;
	}

	public void settSyCreateInfo(String tSyCreateInfo) {
		this.tSyCreateInfo = tSyCreateInfo;
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