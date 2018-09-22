package com.fh.entity;

public class AppUser {
	
	private String user_id;
	
	private String username;
	
	private String password;
	
	private String name;
	
	private String rights;
	
	private String role_id;
	
	private String last_login;
	
	private String ip;
	
	private String status;
	
	private String bz;
	
	private String phone;
	
	private String sfid;
	
	private String start_time;
	
	private String end_time;
	
	private String years;
	
	private String number;
	
	private String email;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRights() {
		return rights;
	}

	public void setRights(String rights) {
		this.rights = rights;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	public String getLast_login() {
		return last_login;
	}

	public void setLast_login(String last_login) {
		this.last_login = last_login;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBz() {
		return bz;
	}

	public void setBz(String bz) {
		this.bz = bz;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSfid() {
		return sfid;
	}

	public void setSfid(String sfid) {
		this.sfid = sfid;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "AppUser [user_id=" + user_id + ", username=" + username + ", password=" + password + ", name=" + name
				+ ", rights=" + rights + ", role_id=" + role_id + ", last_login=" + last_login + ", ip=" + ip
				+ ", status=" + status + ", bz=" + bz + ", phone=" + phone + ", sfid=" + sfid + ", start_time="
				+ start_time + ", end_time=" + end_time + ", years=" + years + ", number=" + number + ", email=" + email
				+ "]";
	}
}
