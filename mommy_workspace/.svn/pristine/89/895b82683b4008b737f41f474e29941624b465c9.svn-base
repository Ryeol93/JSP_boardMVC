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
	   
	 // 전체 목록 
	 		public List<FavoriteDTO> selectAll(int userNum){
	 			return sqlSession.selectList("Favorite.selectAll", userNum);
	 		}
	 		
	   
}



