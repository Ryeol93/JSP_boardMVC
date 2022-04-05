package com.boardMVC.app.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.boardMVC.app.member.vo.MemberVO;
import com.boardMVC.mybatis.config.MyBatisConfig;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
//DAO는 메소드를 작성하는곳/sqlSession 만드는곳
	public MemberDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//아이디 중복검사
	public boolean checkId(String memberId) {
		//member.xml에서 설정한 Member.checkId의 sql문을 사용
		return (Integer)sqlSession.selectOne("Member.checkId", memberId) == 1;
	}
	
	//회원가입
	public void join(MemberVO member) {
		sqlSession.insert("Member.join", member);
	}
	
	//로그인
	public int login(Map<String, String> loginMap) {
		int memberNumber = 0;
		try {memberNumber = sqlSession.selectOne("Member.login", loginMap);} catch (Exception e) {;}
		return memberNumber;
	}
	
	//회원 정보 조회
	public MemberVO getInfo(int memberNumber) {
		return sqlSession.selectOne("Member.getInfo", memberNumber);
	}
	
}












