package com.fh.entity.home;

/**
 * 联系方式表实体
 * @author zbb
 *
 */
public class SyContact {

	private String tSyContactId;// ID
	private String tSyKey;// 方式名
	private String tSyValue;// 描述
	private String tSyType;// 类型
	private String tSyBz1;// 备注1
	private String tSyBz2;// 备注2

	public String gettSyContactId() {
		return tSyContactId;
	}

	public void settSyContactId(String tSyContactId) {
		this.tSyContactId = tSyContactId;
	}

	public String gettSyKey() {
		return tSyKey;
	}

	public void settSyKey(String tSyKey) {
		this.tSyKey = tSyKey;
	}

	public String gettSyValue() {
		return tSyValue;
	}

	public void settSyValue(String tSyValue) {
		this.tSyValue = tSyValue;
	}

	public String gettSyType() {
		return tSyType;
	}

	public void settSyType(String tSyType) {
		this.tSyType = tSyType;
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
