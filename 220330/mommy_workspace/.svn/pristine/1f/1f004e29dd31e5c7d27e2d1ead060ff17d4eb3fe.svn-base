package com.mommy.app.myPage.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.user.vo.UserVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class MyPageDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	   SqlSession sqlSession;
	   
	   public MyPageDAO() {
	      sqlSession = sqlSessionFactory.openSession(true);
	   }
	   
	      //myPage 내정보 수정
	      
	  	public void updateMyInfo(UserVO userVo) {
	  		sqlSession.update("MyPage.updateMyInfo", userVo);
	  	}
	      //myPage 비밀번호 검사  
	      public int myPagePwCk(Map<String, String> userMap) {
	         int userNum = 0;
	         try {userNum = sqlSession.selectOne("MyPage.myPagePwCk", userMap);} catch (Exception e) {
	        	 System.out.println(e);
	        	 e.printStackTrace();}
	         return userNum;
	      }
	      
	      public void updatePw(Map<String, String> userMap) {
	    	  sqlSession.update("MyPage.updateUserPw", userMap);
	      }

}
