package com.fs.vo;

public class UserVO {

    // 아이디
    private String u_id;

    // 비밀번호
    private String u_pw;

    // 이름
    private String u_name;


    // 이메일
    private String u_email;

    // 핸드폰 번호
    private String u_phone;


    // 회사명
    private String u_company_name;


    // 회사 주소
    private String u_company_address;

    //회사 상세 주소
    private String u_detail_address;

    // 회원 등급
    private String u_member;


    // 은행
    private String u_bank;


    // 예금주
    private String u_moneytaker;


    // 은행 계좌
    private String u_acct;


    public String getU_id() {
        return u_id;
    }
    public void setU_id(String u_id) {
        this.u_id=u_id;
    }


    public String getU_pw() {
        return u_pw;
    }
    public void setU_pw(String u_pw) {
        this.u_pw=u_pw;
    }


    public String getU_name() {
        return u_name;
    }
    public void setU_name(String u_name) {
        this.u_name=u_name;
    }


    public String getU_email() {
        return u_email;
    }
    public void setU_email(String u_email) {
        this.u_email=u_email;
    }


    public String getU_phone() {
        return u_phone;
    }
    public void setU_phone(String u_phone) {
        this.u_phone=u_phone;
    }


    public String getU_company_name() {
        return u_company_name;
    }
    public void setU_company_name(String u_company_name) {
        this.u_company_name=u_company_name;
    }


    public String getU_company_address() {
        return u_company_address;
    }
    public void setU_company_address(String u_company_address) {
        this.u_company_address=u_company_address;
    }


    public String getU_detail_address() {
        return u_detail_address;
    }
    public void setU_detail_address(String u_detail_address) {
        this.u_detail_address=u_detail_address;
    }


    public String getU_member() {
        return u_member;
    }
    public void setU_member(String u_member) {
        this.u_member=u_member;
    }


    public String getU_bank() {
        return u_bank;
    }
    public void setU_bank(String u_bank) {
        this.u_bank=u_bank;
    }


    public String getU_moneytaker() {
        return u_moneytaker;
    }
    public void setU_moneytaker(String u_moneytaker) {
        this.u_moneytaker=u_moneytaker;
    }


    public String getU_acct() {
        return u_acct;
    }
    public void setU_acct(String u_acct) {
        this.u_acct=u_acct;
    }


    @Override public String toString() {
        return "UserVO [u_id="+u_id+", u_pw="+u_pw+", u_name="+u_name+", u_email="+u_email+", u_phone="+u_phone+", u_company_name="+u_company_name+", u_company_address="+u_company_address+", u_detail_address="+u_detail_address+", u_member="+u_member+"]";
    }
}