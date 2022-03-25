package com.mommy.app.chat.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.chat.vo.ChatVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class ChatDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	   SqlSession sqlSession;
	   
	   public ChatDAO() {
		      sqlSession = sqlSessionFactory.openSession(true);
		   }
	   
	   // 쪽지 보내기
	   public void insert(ChatVO chat) {
	         sqlSession.insert("Chat.insert", chat);
	      }
	   
	   // 받은 쪽지 목록 
	   public List<ChatVO> selectAll(int userNum){
		   return sqlSession.selectList("Chat.selectAll", userNum);
	   }
	   
	   // 받은 요청 갯수
	   public int getTotal(int userNum) {
		   return sqlSession.selectOne("Chat.getTotal", userNum);
	   }
	   

}
