package com.mommy.app.service.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.service.vo.FavoriteDTO;
import com.mommy.app.service.vo.FavoriteVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class FavoriteDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	   SqlSession sqlSession;
	   
	   public FavoriteDAO() {
		      sqlSession = sqlSessionFactory.openSession(true);
		   }
	   
	   // 찜 등록 
	   public void insert(FavoriteVO favorite) {
	         sqlSession.insert("Favorite.insert", favorite);
	      }
	   
	   // 찜 삭제 
	 		public void delete(FavoriteVO favorite) {
	 			sqlSession.delete("Favorite.delete", favorite);
	 		}
	 		
	 	// 찜 상태 확인
	 		public int check(FavoriteVO favorite) {
	 			return sqlSession.selectOne("Favorite.check", favorite);
	 		}
	   
	 // 전체 목록 
	 	public List<FavoriteDTO> selectAll(int userNum){
	 			return sqlSession.selectList("Favorite.selectAll", userNum);
	 		}
	 	
	 	// 유저넘으로 해당 유저의 찜목록 전체 삭제 
	 	public void deleteUserAll(int userNum) {
	 		 sqlSession.delete("Favorite.deleteUserAll",userNum);
	 	}
	 		
	   
}



