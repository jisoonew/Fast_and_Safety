package com.fs.vo;

import org.springframework.stereotype.Component;

@Component
public class Today_delivery_VO {
	private String u_id;
	private String td_name;
	private String td_phone;
	private int td_volume;
	private String td_address;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getTd_name() {
		return td_name;
	}
	public void setTd_name(String td_name) {
		this.td_name = td_name;
	}
	public String getTd_phone() {
		return td_phone;
	}
	public void setTd_phone(String td_phone) {
		this.td_phone = td_phone;
	}
	public int getTd_volume() {
		return td_volume;
	}
	public void setTd_volume(int td_volume) {
		this.td_volume = td_volume;
	}
	public String getTd_address() {
		return td_address;
	}
	public void setTd_address(String td_address) {
		this.td_address = td_address;
	}
    @Override
    public String toString() {
        return "Today_delivery_VO [u_id=" + u_id + ", td_name=" + td_name + ", td_phone=" + td_phone + ", td_volume=" + td_volume + " , td_address=" + td_address + "]";
    }
}
