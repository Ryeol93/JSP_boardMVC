package com.mommy.app.service.dao;

import java.util.List;  
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.service.vo.SearchDetailDTO;
import com.mommy.app.service.vo.ServiceDTO;
import com.mommy.mybatis.config.MyBatisConfig;

public class ServiceDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public ServiceDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	//게시글 전체 개수
		public int getTotal() {
			return sqlSession.selectOne("Service.getTotal");
		}
		
	//부모가 쓴 게시글 목록
	public List<ServiceDTO> selectAll1(Map<String, Integer> boardMap) {
		return sqlSession.selectList("Service.selectAll1", boardMap); 
		}
	//게시글 목록
	public List<ServiceDTO> selectAll2(Map<String, Integer> boardMap) {
		return sqlSession.selectList("Service.selectAll2", boardMap); 
	}
	
	//시터 게시글 전체 개수
	public int sitterTotal() {
		return sqlSession.selectOne("Service.sitterTotal");
	}
	
	//부모 게시글 전체 개수
	public int momTotal() {
		return sqlSession.selectOne("Service.momTotal");
	}
	
	//상세검색 필터링
	public List<ServiceDTO> searchDetail(Map<String, Integer> modalInput) {
		return sqlSession.selectList("Service.searchDetail", modalInput);  
	}
	//상세검색 게시글 총 갯수
	public int searchDetailGetTotal(Map<String, Integer> modalInput) {
		return sqlSession.selectOne("Service.searchDetailGetTotal", modalInput);  
	}
	
	
	
	
	
	
	
	
	
}
