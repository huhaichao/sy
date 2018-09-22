package com.fh.entity;

import java.util.Date;

/**
 * 贴吧模型
 * @author link
 *
 */
public class Tb {
	
	private String id;
	
	private String author_id;
	
	private String title;
	
	private String content;
	
	private Date input_date;
	
	private String review;
	
	private String keyword;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAuthor_id() {
		return author_id;
	}

	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getInput_date() {
		return input_date;
	}

	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "Tb [id=" + id + ", author_id=" + author_id + ", title=" + title + ", content=" + content
				+ ", input_date=" + input_date + ", review=" + review + ", keyword=" + keyword + "]";
	}
}
