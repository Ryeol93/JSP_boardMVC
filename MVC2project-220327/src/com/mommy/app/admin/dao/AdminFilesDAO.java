package com.mommy.app.admin.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.admin.vo.AdminFilesVO;
import com.mommy.mybatis.config.MyBatisConfig;
import com.oreilly.servlet.MultipartRequest;

public class AdminFilesDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	SqlSession sqlSession;
	
	public AdminFilesDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//첨부파일 추가(SQL)
	private void insert(AdminFilesVO file) {
		sqlSession.insert("Files.insert", file);
	}
	
	//첨부파일 추가(로직)
	public void insert(MultipartRequest multi, int askNum) {
		AdminFilesVO file = new AdminFilesVO();
		Enumeration<String> files = multi.getFileNames();
		
		//type="file"인 태그의 개수만큼 반복
		while(files.hasMoreElements()) {
			//사용자가 업로드한 파일 태그의 name값
			String name = files.nextElement();
			
			//사용자가 업로드한 원본 파일 이름
			String fileNameOriginal = multi.getOriginalFileName(name);
			
			//중복 시 변경된 이름
			String fileName = multi.getFilesystemName(name);
			
			//첨부파일이 업로드되지 않았다면
			if(fileName == null) {continue;}

			file.setFileName(fileName);
			file.setFileNameOriginal(fileNameOriginal);
			file.setAskNum(askNum);
			
			insert(file);
		}
	}
	
	//첨부파일 삭제
	public void delete(int askNum) {
		sqlSession.delete("AdminFiles.delete", askNum);
	}
	
	//첨부파일 가져오기
	public List<AdminFilesVO> select(int askNum){
		return sqlSession.selectList("AdminFiles.select", askNum);
	}
	
}

