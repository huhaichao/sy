package com.fh.entity.home;

/**
 * 字典实体
 * @author zbb
 *
 */
public class SyDictionary {

	private String tSyDictionaryId;// 字典ID
	private String tSyDictionaryType;// 字典类型
	private String tSyIdentifyContent;// 标识内容
	private String tSyConvertContent;// 转换内容
	private String tSyBz1;// 备注1（暂时描述占用此字段）
	private String tSyBz2;// 备注2

	public String gettSyDictionaryId() {
		return tSyDictionaryId;
	}

	public void settSyDictionaryId(String tSyDictionaryId) {
		this.tSyDictionaryId = tSyDictionaryId;
	}

	public String gettSyDictionaryType() {
		return tSyDictionaryType;
	}

	public void settSyDictionaryType(String tSyDictionaryType) {
		this.tSyDictionaryType = tSyDictionaryType;
	}

	public String gettSyIdentifyContent() {
		return tSyIdentifyContent;
	}

	public void settSyIdentifyContent(String tSyIdentifyContent) {
		this.tSyIdentifyContent = tSyIdentifyContent;
	}

	public String gettSyConvertContent() {
		return tSyConvertContent;
	}

	public void settSyConvertContent(String tSyConvertContent) {
		this.tSyConvertContent = tSyConvertContent;
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
