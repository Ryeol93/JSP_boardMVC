package com.mommy.app.ask.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.ask.vo.AskDTO;
import com.mommy.app.ask.vo.AskVO;
import com.mommy.mybatis.config.MyBatisConfig;


public class AskDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public AskDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
/*    //askStatus조회
	public int selectStatus(int askNum) {
       
       int selectStatus = -1;
       
       try {
          selectStatus = sqlSession.selectOne("Ask.selectStatus", askNum);
       } catch (Exception e) {;}
       
       return selectStatus;
 
    }
	
	//categoryNum조회
	public int selectCategoryNum(int askNum) {
		
		int selectCategoryNum = -1;
		
		try {
			selectCategoryNum = sqlSession.selectOne("Ask.selectCategoryNum", askNum);
		} catch (Exception e) {;}
		
		return selectCategoryNum;
		
	}*/
	
	//게시글 목록
		public List<AskDTO> selectAll(Map<String, Integer> askMap) {
			return sqlSession.selectList("Ask.selectAll", askMap);
		}
		
		//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Ask.getTotal");
		}
		
		//게시글 정보 조회
		public AskDTO selectDetail(int askNum) {
			return sqlSession.selectOne("Ask.selectDetail", askNum);
		}		
		
		//최근 게시글 번호
		public int getSeq() {
			return sqlSession.selectOne("Ask.getSeq");
		}
		
		//게시글 추가
		public void insert(AskVO Ask) {
			sqlSession.insert("Ask.insert", Ask);
		}

		
/*		//게시글 삭제
		public void delete(int askNum) {
			sqlSession.delete("Board.delete", askNum);
		}*/
		
/*		//게시글 수정
		public void update(AskVO ask) {
			sqlSession.update("Ask.update", ask);
		}*/
		

}
