package com.tpdf.shoot.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tpdf.shoot.dao.NoticeDao;
import com.tpdf.shoot.vo.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDao dao;
	
	//회원목록
	@Override
	public List<NoticeVo> list() {
		return dao.list();
	}
	//게시글작성
	@Override
	public void insert(NoticeVo vo) {
		dao.insert(vo);
	}
	
	//게시물 내용상세보기
	@Override
	public NoticeVo modify(int notice_idx) {
		return dao.modify(notice_idx);
	}	
	
	//게시글 수정
	@Override
	public void update(NoticeVo vo) {
		dao.update(vo);
	}
	//게시글삭제
	@Override
	public void delete(int notice_idx) {
		dao.delete(notice_idx);
	}
	
	
}
