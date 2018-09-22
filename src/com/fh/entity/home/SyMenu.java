package com.fh.entity.home;

import java.util.Date;

public class SyMenu {
	private String tSyMenuId;// id
	private String tSyMenuSubmenuId;// 菜单id
	private String tSyMenuName;// 菜单名称
	private int tSyMenuParentId;// 父级菜单
	private String tSyMenuUrl;// 菜单地址
	private int tSyMenuDisabled;// 是否禁止
	private int tSyMenuOrder;// 排序
	private String tSyMenuDescription;// 描述
	private Date tSyCreate;// 创建时间
	private String tSyBz1;// 备注1
	private String tSyBz2;// 备注2

	public String gettSyMenuId() {
		return tSyMenuId;
	}

	public void settSyMenuId(String tSyMenuId) {
		this.tSyMenuId = tSyMenuId;
	}

	public String gettSyMenuSubmenuId() {
		return tSyMenuSubmenuId;
	}

	public void settSyMenuSubmenuId(String tSyMenuSubmenuId) {
		this.tSyMenuSubmenuId = tSyMenuSubmenuId;
	}

	public String gettSyMenuName() {
		return tSyMenuName;
	}

	public void settSyMenuName(String tSyMenuName) {
		this.tSyMenuName = tSyMenuName;
	}

	public int gettSyMenuParentId() {
		return tSyMenuParentId;
	}

	public void settSyMenuParentId(int tSyMenuParentId) {
		this.tSyMenuParentId = tSyMenuParentId;
	}

	public String gettSyMenuUrl() {
		return tSyMenuUrl;
	}

	public void settSyMenuUrl(String tSyMenuUrl) {
		this.tSyMenuUrl = tSyMenuUrl;
	}

	public int gettSyMenuDisabled() {
		return tSyMenuDisabled;
	}

	public void settSyMenuDisabled(int tSyMenuDisabled) {
		this.tSyMenuDisabled = tSyMenuDisabled;
	}

	public int gettSyMenuOrder() {
		return tSyMenuOrder;
	}

	public void settSyMenuOrder(int tSyMenuOrder) {
		this.tSyMenuOrder = tSyMenuOrder;
	}

	public String gettSyMenuDescription() {
		return tSyMenuDescription;
	}

	public void settSyMenuDescription(String tSyMenuDescription) {
		this.tSyMenuDescription = tSyMenuDescription;
	}

	public Date gettSyCreate() {
		return tSyCreate;
	}

	public void settSyCreate(Date tSyCreate) {
		this.tSyCreate = tSyCreate;
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
