package com.tpdf.shoot.dao;

import java.util.List;

import com.tpdf.shoot.vo.NoticeVo;

public interface NoticeDao {
	public List<NoticeVo> list();
	public void insert(NoticeVo vo);
	public NoticeVo modify(int notice_idx);
	public void update(NoticeVo vo);
	public void delete(int notice_idx);
}
