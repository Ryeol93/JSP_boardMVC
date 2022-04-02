package com.boardMVC.app.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.boardMVC.app.board.vo.BoardDTO;
import com.boardMVC.app.board.vo.BoardVO;
import com.boardMVC.mybatis.config.MyBatisConfig;

public class FilesDAO {
   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessoinFactory();
   SqlSession sqlSession;
   
   public FilesDAO() {
      sqlSession = sqlSessionFactory.openSession(true);
   }
   

}
