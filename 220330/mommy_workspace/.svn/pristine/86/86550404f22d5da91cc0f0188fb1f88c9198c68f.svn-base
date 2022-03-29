package com.mommy.app.service.dao;

import java.util.List;  
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.service.vo.LookProfileDTO;
import com.mommy.app.service.vo.ParameterDTO;
import com.mommy.app.service.vo.SearchDetailDTO;

import com.mommy.app.service.vo.ServiceDTO;
import com.mommy.app.service.vo.ServiceVO;
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
	//상세검색 게시글 총 갯수
	public int insertProfile (ServiceVO serviceVO) {
		return sqlSession.insert("Service.insertProfile", serviceVO);  
	}
	
	//돌봄유형 주5일등하원
	public List<ServiceDTO> careTypeSchool(Map<String,Integer> modalInput){
		return sqlSession.selectList("Service.careTypeSchool",modalInput);
	}
	//돌봄유형 놀이/학습시터
	public  List<ServiceDTO> teach(Map<String,Integer> modalInput){
		return sqlSession.selectList("Service.teach",modalInput);
	}
	
	//돌봄유형 풀타임
	public List<ServiceDTO> fullTime(Map<String,Integer> modalInput){
		return sqlSession.selectList("Service.fullTime",modalInput);
	}
	
	//돌봄유형 짧은시간
	public List<ServiceDTO> shortTime(Map<String,Integer> modalInput){
		return sqlSession.selectList("Service.shortTime",modalInput);
	}
	
	//돌봄유형 긴급
	public List<ServiceDTO> careEmergency(Map<String,Integer> modalInput){
		return sqlSession.selectList("Service.careEmergency",modalInput);
	}
	
	//돌봄지역 
	public List<ServiceDTO> searchArea(ParameterDTO param){
		return sqlSession.selectList("Service.searchArea", param);
	}


	
	//시터프로필 상세보기
	public LookProfileDTO lookSitterProfile(int userNum) {
		return sqlSession.selectOne("Service.lookSitterProfile", userNum);
	}
	
	//맘프로필 상세보기
	public LookProfileDTO lookMomProfile(int userNum) {
		return sqlSession.selectOne("Service.lookMomProfile", userNum);
	}
	// 최근 게시글 번호 
	public int getSeq() {
		return sqlSession.selectOne("Service.getSeq");
	}
	//프로필 삭제
	public void delete(int userNum) {
		sqlSession.delete("Service.delete", userNum);
	}	
	
	// 프로필 번호 가져오기 
	public int selectProfileNum(int userNum) {
			if(sqlSession.selectOne("Service.selectProfileNum",userNum) == null) {
				return -1;
			}
		return sqlSession.selectOne("Service.selectProfileNum",userNum);
	}
	public void inFavoriteDelete(int userNum) {
		sqlSession.delete("Service.inFavoriteDelete",userNum);
	}
}
