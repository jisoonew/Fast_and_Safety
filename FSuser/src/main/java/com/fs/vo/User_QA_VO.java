package com.fs.vo;


public class User_QA_VO {
	String u_name;
	String Q_id;
	String u_id;
	String Q_variety;
	String Q_title;
	String Q_content;
	String Q_ymd;
	
	private String keyword; // 검색 키워드
	private String type; // 검색 타입
	

	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getQ_id() {
		return Q_id;
	}
	public void setQ_id(String q_id) {
		Q_id = q_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getQ_variety() {
		return Q_variety;
	}
	public void setQ_variety(String q_variety) {
		Q_variety = q_variety;
	}
	public String getQ_title() {
		return Q_title;
	}
	public void setQ_title(String q_title) {
		Q_title = q_title;
	}
	public String getQ_content() {
		return Q_content;
	}
	public void setQ_content(String q_content) {
		Q_content = q_content;
	}
	public String getQ_ymd() {
		return Q_ymd;
	}
	public void setQ_ymd(String q_ymd) {
		Q_ymd = q_ymd;
	}
	
	
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
    public String toString() {
        return "User_QA_VO [u_name=" + u_name + ", Q_id=" + Q_id + ", u_id=" + u_id + ", Q_variety=" + Q_variety + " , Q_title=" + Q_title +  " , Q_content" + Q_content
        		+ ", Q_ymd=" + Q_ymd + "]";
    }
	
}
