package com.tpdf.shoot.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tpdf.shoot.vo.NoticeVo;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace ="com.tpdf.shoot.mappers.notice";
	
	
	//게시글 목록
	@Override
	public List<NoticeVo> list() {
		return sql.selectList(namespace + ".list");
	}
	//게시글 등록
	
	@Override
	public void insert(NoticeVo vo) {
		sql.insert(namespace + ".insert", vo);
	}
	//게시글 상세보기
	public NoticeVo modify(int notice_idx) {
		return sql.selectOne(namespace + ".modify", notice_idx);
	}
	//게시글 수정 
	@Override
	public void update(NoticeVo vo) {
		sql.update(namespace + ".update", vo);
	}
	//게시글 삭제
	@Override
	public void delete(int notice_idx) {
		sql.delete(namespace + ".delete", notice_idx);
	}
	

}
