package com.mommy.app.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.notice.vo.NoticeVO;
import com.mommy.mybatis.config.MyBatisConfig;


public class NoticeDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}	
	
	//공지 게시판 목록
	public List<NoticeVO> selectAll(Map<String, Integer> noticeMap){
		return sqlSession.selectList("Notice.selectAll", noticeMap);
	}
	
	//공지 게시글 총 개수
	public int getTotal() {
		return sqlSession.selectOne("Notice.getTotal");
	}
	
	//공지 게시판 상세보기
	public NoticeVO selectDetail(int noticeNum) {
		return sqlSession.selectOne("Notice.selectDetail", noticeNum);
	}
	
	//공지 게시글 추가
	public void insert(NoticeVO notice) {
		sqlSession.selectOne("Notice.insert", notice);
	}
	
}