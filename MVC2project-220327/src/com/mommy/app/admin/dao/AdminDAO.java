package com.mommy.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.admin.vo.AdminAuthDTO;
import com.mommy.app.admin.vo.AdminNoticeVO;
import com.mommy.app.admin.vo.AdminQnaDTO;
import com.mommy.app.admin.vo.AdminQnaVO;
import com.mommy.app.admin.vo.AdminVO;
import com.mommy.app.notice.vo.NoticeVO;
import com.mommy.app.user.vo.UserVO;
import com.mommy.mybatis.config.MyBatisConfig;

public class AdminDAO
{
	  SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	  SqlSession sqlSession;
	  
	  public AdminDAO()
	  {
		    sqlSession = sqlSessionFactory.openSession(true);
	  }
//----------문의 신고 페이지-------------------------------------------------------	
		
		//게시글 정보 조회
		public AdminQnaVO selectDetail(int askNum) {
			return sqlSession.selectOne("Admin.selectDetail", askNum);
		}
		
		//최근 게시글 번호
		public int getSeq() {
			return sqlSession.selectOne("Admin.getSeq");
		}
		
		//답변 달기
		public void update(AdminQnaVO admin) {
			sqlSession.update("Admin.update", admin);
		}
		
//----------------문의--------------------------------------------------	
		//문의 게시글 전체 목록
		public List<AdminQnaDTO> qnaSelectAll(Map<String, Integer> qnaMap) {
			return sqlSession.selectList("Admin.qnaSelectAll", qnaMap);
		}
		
		//문의글 전체 개수
		public int getQnaTotal() {
			return sqlSession.selectOne("Admin.getQnaTotal");
		}
		
		//문의 처리중 게시글 전체 개수 (처리중0 처리완료1)
		public int getQnaTotal0() {
			return sqlSession.selectOne("Admin.getQnaTotal0");
		}
		
		//문의 처리완료 게시글 천제 개수(처리중0 처리완료1)
		public int getQnaTotal1() {
			return sqlSession.selectOne("Admin.getReportTotal1");
		}
//----------------------------------------------------------------------
		
//----------------신고---------------------------------------------------
		//문의 게시글 전체 목록
		public List<AdminQnaDTO> reportSelectAll(Map<String, Integer> reportMap) {
			return sqlSession.selectList("Admin.reportSelectAll", reportMap);
		}
		
		//신고글 전체 개수
		public int getReportTotal() {
			return sqlSession.selectOne("Admin.getReportTotal");
		}
		
		//신고 처리중 게시글 전체 개수 (처리중0 처리완료1)
		public int getReportTotal0() {
			return sqlSession.selectOne("Admin.getReportTotal0");
		}
		
		//신고 처리완료 게시글 천제 개수(처리중0 처리완료1)
		public int getReportTotal1() {
			return sqlSession.selectOne("Admin.getReportTotal1");
		}
//----------------------------------------------------------------------		
//----------------공지---------------------------------------------------
		
		//공지 게시판 목록
		public List<AdminNoticeVO> noticeSelectAll(Map<String, Integer> noticeMap){
			return sqlSession.selectList("Admin.noticeSelectAll", noticeMap);
		}
		
		//공지 게시글 총 개수
		public int noticeGetTotal() {
			return sqlSession.selectOne("Admin.noticeGetTotal");
		}
		
		//공지 게시판 상세보기
		public AdminNoticeVO noticeSelectDetail(int noticeNum) {
			return sqlSession.selectOne("Admin.noticeSelectDetail", noticeNum);
		}
		
		
		//공지 글쓰기
		public void insert(AdminNoticeVO notice) {
			sqlSession.selectOne("Admin.insert", notice);
		}
		
	  
//----------------------------------------------------------------------
		
	//인증글 목록 조회
	public List<AdminAuthDTO> authSelectAll(Map<String, Integer> authMap){
		return sqlSession.selectList("Admin.authSelectAll", authMap);
	}	

	//공지 게시글 총 개수
	public int authGetTotal() {
		return sqlSession.selectOne("Admin.authGetTotal");
	}	
	
//---------------------------------------------------------------------------
	//체크 박스 업데이트

	public void CheckBox_Update( AdminAuthDTO DTO ) {
		System.out.println(DTO.getCheckCitizen());
		System.out.println(DTO.getCheckMedi());
		System.out.println(DTO.getCheckMom());
		System.out.println(DTO.getCheckTeacher());
		System.out.println(DTO.getCheckUniversity());
		System.out.println(DTO.getProfileNum());

		 sqlSession.update("Admin.update_Certification",DTO);

	}
	
	//인증 대기 수 
	public int authGetTotal0() {
		return sqlSession.selectOne("Admin.authGetTotal0");
	}	
	
	//인증 완료 수
	public int authGetTotal1() {
		return sqlSession.selectOne("Admin.authGetTotal1");
	}	
	
}





