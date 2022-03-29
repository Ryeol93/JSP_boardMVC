package com.mommy.app.community.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.community.vo.CommunityCommentDTO;
import com.mommy.app.community.vo.CommunityCommentVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class CommunityCommentDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public CommunityCommentDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//댓글 목록
		public List<CommunityCommentDTO> selectComments(int communityNum) {
			return sqlSession.selectList("Community.selectComments", communityNum);
		}
		
		//댓글 등록
		public void insertComment(CommunityCommentVO reply) {
			sqlSession.insert("Community.insertComment", reply);
		}
		
		//댓글 삭제
		public void deleteComment(int commentNum) {
			sqlSession.delete("Community.deleteComment", commentNum);
		}
		//댓글 전체 삭제
		public void deleteAllComment(int userNum) {
			sqlSession.delete("Community.deleteAllComment", userNum);
		}
		
		//댓글 수정
		public void updateComment(CommunityCommentVO comment) {
			sqlSession.update("Community.updateComment", comment);
		}

}
