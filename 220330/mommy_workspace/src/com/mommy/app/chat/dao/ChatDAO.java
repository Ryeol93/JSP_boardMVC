package com.mommy.app.chat.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.chat.vo.ChatDTO;
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
	   public List<ChatDTO> selectAll(int userNum){
		   return sqlSession.selectList("Chat.selectAll", userNum);
	   }
	   
	   // 받은 요청 갯수
	   public int getTotal(int userNum) {
		   return sqlSession.selectOne("Chat.getTotal", userNum);
	   }
	   
	   // 개별 읽음 처리 
	   public void updateOne (Map<String, Integer> map) {
		   try {sqlSession.update("Chat.updateOne", map);} catch (Exception e) {;}
	   }
	   
	   // 전체 읽음 처리 
	   public void updateAll (int userNum) {
		   sqlSession.update("Chat.updateAll", userNum);
	   }
	   
	   // 알림 유무 
	   public int countNew (int userNum) {
		   return sqlSession.selectOne("Chat.countNew", userNum);
	   }
	   
	   // 이름 가져오기 
	   public String userName (int userNum) {
		   return sqlSession.selectOne("Chat.userName", userNum);
	   }
	   // 채팅 삭제
	   public void delete(int userNum) {
		  sqlSession.delete("Chat.delete",userNum);
	   }
	   

}
