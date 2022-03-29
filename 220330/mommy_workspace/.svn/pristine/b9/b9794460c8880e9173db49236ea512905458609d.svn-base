package com.mommy.app.community.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.community.vo.CommunityDTO;
import com.mommy.app.community.vo.CommunityVO;
import com.mommy.mybatis.config.MyBatisConfig;


public class CommunityDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//게시글 목록									// 키값 
		public List<CommunityDTO> selectAll(Map<String, Integer> communityMap) {
			return sqlSession.selectList("Community.selectAll", communityMap);
		}
		 
		//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Community.getTotal");
		}
		
		//게시글 정보 조회
		public CommunityDTO selectDetail(int communityNum) {
			return sqlSession.selectOne("Community.selectDetail", communityNum);
		}
		

		//최근 게시글 번호
		public int getSeq() {
			return sqlSession.selectOne("Community.getSeq");
		}
		
		//게시글 추가
		public void insert(CommunityVO Community) {
			sqlSession.insert("Community.insert", Community);
		}
		
		//게시글 삭제
		public void delete(int communityNum) {
			sqlSession.delete("Community.delete", communityNum);
		}
		//게시글 전체 삭제
		public void allDelete(int userNum) {
			sqlSession.delete("Community.allDelete", userNum);
		}
		
		//게시글 수정
		public void update(CommunityVO Community) {
			sqlSession.update("Community.update", Community);
		}
		
		//글쓴이 유저넘 조회 
		public int getUserNum(int communityNum) {
			return sqlSession.selectOne("Community.getUserNum", communityNum);
		}
	
}
