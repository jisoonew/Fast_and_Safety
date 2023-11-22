package com.fs.model;

public class ManagerVO {

	private String m_id; // manager 아이디
	private String m_pw; // manager 비밀번호
	private String m_name; //manager 이름 
	private String m_email; //manager 이메일
	private String m_phone; //manager 전화번호 
	private String m_power; //manager 권한
	private String m_use; // manager 사용
	private String m_rep; // manager 대표
	 

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_power() {
		return m_power;
	}

	public void setM_power(String m_power) {
		this.m_power = m_power;
	}
	
	public String getM_use() {
		return m_use;
	}

	public void setM_use(String m_use) {
		this.m_use = m_use;
	}

	public String getM_rep() {
		return m_rep;
	}

	public void setM_rep(String m_rep) {
		this.m_rep = m_rep;
	}

	@Override
	public String toString() {
		return "managerVO [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_email=" + m_email +
															  ", m_phone=" + m_phone + ", m_power=" + m_power + "]";
	}

}
