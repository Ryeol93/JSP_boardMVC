package com.mommy.app.service.dao;

import java.util.Enumeration;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mommy.app.service.vo.ProfileFilesVO;
import com.mommy.mybatis.config.MyBatisConfig;
import com.oreilly.servlet.MultipartRequest;

public class ProfileFilesDAO {
	 SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
	   SqlSession sqlSession;
	   
	   public ProfileFilesDAO() {
		      sqlSession = sqlSessionFactory.openSession(true);
	    }
	   
	   
		//첨부파일 추가(SQL)
		private void insert(ProfileFilesVO file) {
			sqlSession.insert("ProfileFiles.insert", file);
		}	   
		//첨부파일 추가(로직)
		public void insert(MultipartRequest multi, int profileNum) {
			ProfileFilesVO file = new ProfileFilesVO();
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
				file.setProfileNum(profileNum);
				System.out.println(fileName);
				System.out.println(fileNameOriginal);
				System.out.println(profileNum);
				
				
				insert(file);
			}
		}	   
}
