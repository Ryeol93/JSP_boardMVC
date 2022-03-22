package com.mommy.app.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.user.vo.UserVO;
import com.mommy.mybatis.config.MyBatisConfig;



public class UserDAO {
   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
   SqlSession sqlSession;
   
   public UserDAO() {
      sqlSession = sqlSessionFactory.openSession(true);
   }
   //아이디 중복검사
      public boolean checkId(String userId) {
         return (Integer)sqlSession.selectOne("User.checkId", userId) == 1;
      }
      
      //이메일 중복
      public boolean CheckEmail(String EmilFnd) {
          return (Integer)sqlSession.selectOne("User.CheckEmail", EmilFnd) == 1;
       }
     
    
      //회원가입
      public void join(UserVO user) {
         sqlSession.insert("User.join", user);
      }
      
      //로그인
      public int login(Map<String, String> loginMap) {
         int userNum = 0;
         try {userNum = sqlSession.selectOne("User.login", loginMap);} catch (Exception e) {;}
         return userNum;
      }
      
      //userStatus조회
      public int selectStatus(int userNum) {
         
         int selectStatus = -1;
         
         try {
            selectStatus = sqlSession.selectOne("User.selectStatus", userNum);
         } catch (Exception e) {;}
         
         return selectStatus;
   
      }
      
      
      //userName 조회
      public String selectName(int userNum) {
         String selectName ="";
         
         try {
            selectName = sqlSession.selectOne("User.selectName", userNum);
         } catch (Exception e) {;}
         
         return selectName;
         
      }
      
      
      //회원 정보 조회
      public UserVO getInfo(int userNum) {
         return sqlSession.selectOne("User.getInfo", userNum);
      }
      

      
      
      //아이디찾기
      public String findIdPw(Map<String, String> findIdPw) {
         String userId = null;
         try {userId = sqlSession.selectOne("User.findIdPw", findIdPw);
                  
         } catch (Exception e) {;}
      
         return userId;
         
      }
      //전화번호 중복검사
      public String SelectPhone(Map<String, String> userPhone) {
          String SelectPhone = null;
          try {SelectPhone = sqlSession.selectOne("User.SelectPhone", userPhone);
                  
          } catch (Exception e) {;}
       
          return SelectPhone;
      }
      //비밀번호 재설정
      public String updateUserPw(Map<String, String> updateCUserPw) {
    	  
    	  String updateUserPw = null;
    	
          try {updateUserPw = sqlSession.selectOne("User.updateUserPw", updateCUserPw);
                
          } catch (Exception e) {;}
          return updateUserPw;
      }
      
      
      
      
      
      
      // 유저 삭제
      public void deleteUser(int userNum) {
    	  sqlSession.delete("User.deleteUser", userNum);
      }

  	// 회원 전체 정보 조회
  	public List<UserVO> selectAll() {
  		List<UserVO> list = null; // 파라미터에 식별자 이름을 적는다.
  		list = sqlSession.selectList("User.selectAll");
  		return list; // memberSearchAll()
  	}
  	
  	// 회원 전체 수
  	public List<UserVO> selectCount() {
  		List<UserVO> list = null; // 파라미터에 식별자 이름을 적는다.
  		list = sqlSession.selectList("User.selectCount");
  		return list; // memberSearchAll()
  	}
  	
  	// 맘 회원 수
  	public List<UserVO> MomCount() {
  		List<UserVO> list = null; // 파라미터에 식별자 이름을 적는다.
  		list = sqlSession.selectList("User.MomCount");
  		return list; // memberSearchAll()
  	}
  	
  	// 시터 회원 수
  	public List<UserVO> SitterCount() {
  		List<UserVO> list = null; // 파라미터에 식별자 이름을 적는다.
  		list = sqlSession.selectList("User.SitterCount");
  		return list; // memberSearchAll()
  	}
    // 프로필 유무 검사
  	public boolean myPageProfileCk(int userNum) {
  
       return (Integer)sqlSession.selectOne("User.myPageProfileCk", userNum)== 1;
    }  	
      
}