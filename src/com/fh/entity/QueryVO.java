package com.fh.entity;

public class QueryVO {
	
	private Integer id;
	
	private AppUser appuser;
	
	private Tb tb;
	
//	private Date begin_date;
//	
//	private Date end_date;

	public AppUser getAppuser() {
		return appuser;
	}

	public void setAppuser(AppUser appuser) {
		this.appuser = appuser;
	}

	public Tb getTb() {
		return tb;
	}

	public void setTb(Tb tb) {
		this.tb = tb;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "QueryVO [id=" + id + ", appuser=" + appuser + ", tb=" + tb + "]";
	}

//	public Date getBegin_date() {
//		return begin_date;
//	}
//
//	public void setBegin_date(Date begin_date) {
//		this.begin_date = begin_date;
//	}
//
//	public Date getEnd_date() {
//		return end_date;
//	}
//
//	public void setEnd_date(Date end_date) {
//		this.end_date = end_date;
//	}
}
