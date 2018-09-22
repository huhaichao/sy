package com.fh.entity.home;

import java.util.Date;

/**
 * 公告表
 * 
 * @author zbb
 *
 */
public class SyNotice {

	private String tSyNoticeId;// 公告id
	private String tSyMainTitle;// 主标题
	private String tSySubTitle;// 副标题
	private String tSyName;// 图片名称
	private String tSyPath;// 图片路径
	private String tSyLinkPath;// 连接地址
	private String tSyDesc;// 描述
	private Date tSyDate;// 创建日期
	private String tSyBz1;// 备注1
	private String tSyBz2;// 备注2

	public String gettSyNoticeId() {
		return tSyNoticeId;
	}

	public void settSyNoticeId(String tSyNoticeId) {
		this.tSyNoticeId = tSyNoticeId;
	}

	public String gettSyMainTitle() {
		return tSyMainTitle;
	}

	public void settSyMainTitle(String tSyMainTitle) {
		this.tSyMainTitle = tSyMainTitle;
	}

	public String gettSySubTitle() {
		return tSySubTitle;
	}

	public void settSySubTitle(String tSySubTitle) {
		this.tSySubTitle = tSySubTitle;
	}

	public String gettSyName() {
		return tSyName;
	}

	public void settSyName(String tSyName) {
		this.tSyName = tSyName;
	}

	public String gettSyPath() {
		return tSyPath;
	}

	public void settSyPath(String tSyPath) {
		this.tSyPath = tSyPath;
	}

	public String gettSyLinkPath() {
		return tSyLinkPath;
	}

	public void settSyLinkPath(String tSyLinkPath) {
		this.tSyLinkPath = tSyLinkPath;
	}

	public String gettSyDesc() {
		return tSyDesc;
	}

	public void settSyDesc(String tSyDesc) {
		this.tSyDesc = tSyDesc;
	}

	public Date gettSyDate() {
		return tSyDate;
	}

	public void settSyDate(Date tSyDate) {
		this.tSyDate = tSyDate;
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
