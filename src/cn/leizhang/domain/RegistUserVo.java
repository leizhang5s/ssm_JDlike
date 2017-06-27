package cn.leizhang.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
/*
 * 为了验证是否同意了注册协议，做了一个封装类，封装agree属性
 * 
 * 
 * 
 * */
public class RegistUserVo {
	@NotBlank(message="{regist.agree.is.notnull}")
	private String agree;
	private String repeatpassword;
	private long userid;
	@Size(min=4,max=15,message="{user.name.length.error}")
	private String username;
	@NotBlank(message="{user.password.is.notnull}")
	private String password_;
	private String grade;
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
	public String getRepeatpassword() {
		return repeatpassword;
	}
	public void setRepeatpassword(String repeatpassword) {
		this.repeatpassword = repeatpassword;
	}
	private String truename;
	private String email;
	private String phone;
	private String address_;

	public String getPassword_() {
		return password_;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public void setPassword_(String password_) {
		this.password_ = password_;
	}
	public String getAddress_() {
		return address_;
	}
	public void setAddress_(String address_) {
		this.address_ = address_;
	}
	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
	}
	
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
