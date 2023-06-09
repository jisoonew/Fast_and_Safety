package com.fs.vo;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class Routine_delivery_VO {
	String u_id;
	String rd_name;
	String rd_phone;
	String rd_kind_release;
	int rd_volume;
	String rd_start;
	int rd_cycle1;
	String rd_cycle2;
	int rd_delivery_fee;
	String rd_postcode;
	String rd_address;
	String rd_detail_address;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getRd_name() {
		return rd_name;
	}
	public void setRd_name(String rd_name) {
		this.rd_name = rd_name;
	}
	public String getRd_phone() {
		return rd_phone;
	}
	public void setRd_phone(String rd_phone) {
		this.rd_phone = rd_phone;
	}
	public String getRd_kind_release() {
		return rd_kind_release;
	}
	public void setRd_kind_release(String rd_kind_release) {
		this.rd_kind_release = rd_kind_release;
	}
	public int getRd_volume() {
		return rd_volume;
	}
	public void setRd_volume(int rd_volume) {
		this.rd_volume = rd_volume;
	}
	public String getRd_start() {
		return rd_start;
	}
	public void setRd_start(String rd_start) {
		this.rd_start = rd_start;
	}
	public int getRd_cycle1() {
		return rd_cycle1;
	}
	public void setRd_cycle1(int rd_cycle1) {
		this.rd_cycle1 = rd_cycle1;
	}
	public String getRd_cycle2() {
		return rd_cycle2;
	}
	public void setRd_cycle2(String rd_cycle2) {
		this.rd_cycle2 = rd_cycle2;
	}
	public int getRd_delivery_fee() {
		return rd_delivery_fee;
	}
	public void setRd_delivery_fee(int rd_delivery_fee) {
		this.rd_delivery_fee = rd_delivery_fee;
	}
	public String getRd_postcode() {
		return rd_postcode;
	}
	public void setRd_postcode(String rd_postcode) {
		this.rd_postcode = rd_postcode;
	}
	public String getRd_address() {
		return rd_address;
	}
	public void setRd_address(String rd_address) {
		this.rd_address = rd_address;
	}
	public String getRd_detail_address() {
		return rd_detail_address;
	}
	public void setRd_detail_address(String rd_detail_address) {
		this.rd_detail_address = rd_detail_address;
	}
	
	
}
