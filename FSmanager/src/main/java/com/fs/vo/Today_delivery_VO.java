package com.fs.vo;

import org.springframework.stereotype.Component;

@Component
public class Today_delivery_VO {
	
	private String u_id;
	private String td_name;
	private String td_phone;
	private int td_volume;
	private String td_address;
	private String postcode;
	private String u_detail_address;
	private String kind_release;
	private int delivery_fee;
	private String td_date;
	private String td_status;
	private String td_tracking;
	
	private String kind;
	private String container_type;
	private String container_num;
	private int deliverySum;
	
	private String year;
	private String month;
	private String date;
	
	// 검색 키워드
	private String keyword;
	
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
	
	
    public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	
	
	public String getU_detail_address() {
		return u_detail_address;
	}
	public void setU_detail_address(String u_detail_address) {
		this.u_detail_address = u_detail_address;
	}
	
	
	public String getKind_release() {
		return kind_release;
	}
	public void setKind_release(String kind_release) {
		this.kind_release = kind_release;
	}
	
	
	public int getDelivery_fee() {
		return delivery_fee;
	}
	public void setDelivery_fee(int delivery_fee) {
		this.delivery_fee = delivery_fee;
	}
		
	
	public String getTd_status() {
		return td_status;
	}
	public void setTd_status(String td_status) {
		this.td_status = td_status;
	}
	public String getTd_date() {
		return td_date;
	}
	public void setTd_date(String td_date) {
		this.td_date = td_date;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
	
	
	public String getTd_tracking() {
		return td_tracking;
	}
	public void setTd_tracking(String td_tracking) {
		this.td_tracking = td_tracking;
	}
	public String getContainer_type() {
		return container_type;
	}
	public void setContainer_type(String container_type) {
		this.container_type = container_type;
	}
	
	
	public String getContainer_num() {
		return container_num;
	}
	public void setContainer_num(String container_num) {
		this.container_num = container_num;
	}
	

	public int getDeliverySum() {
		return deliverySum;
	}
	public void setDeliverySum(int deliverySum) {
		this.deliverySum = deliverySum;
	}
	
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
    public String toString() {
        return "Today_delivery_VO [u_id=" + u_id + ", td_name=" + td_name + ", td_phone=" + td_phone + ", td_volume=" + td_volume + " , td_address=" + td_address +  " , keyword" + keyword +"]";
    }
	
}