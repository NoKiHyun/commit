package com.tpdf.shoot.vo;

import java.util.Date;

public class NoticeVo {
	private int notice_idx;
	private int member_idx;
	private String notice_title;
	private String notice_content;
	private String notice_writer;
	private Date notice_wdate;
	private int notice_hit;
	private int notice_file_yn;
	
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public Date getNotice_wdate() {
		return notice_wdate;
	}
	public void setNotice_wdate(Date notice_wdate) {
		this.notice_wdate = notice_wdate;
	}
	public int getNotice_hit() {
		return notice_hit;
	}
	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}
	public int getNotice_file_yn() {
		return notice_file_yn;
	}
	public void setNotice_file_yn(int notice_file_yn) {
		this.notice_file_yn = notice_file_yn;
	}

}
