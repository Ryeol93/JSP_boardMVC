package com.mommy.app.community;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/fileUpload")
public class FileUpload extends HttpServlet{
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setCharacterEncoding("UTF-8");
      String uploadFolder = "C:\\Users\\Windows\\Desktop\\aigb_0900_장서영\\jsp\\workspace\\mommy_workspace\\WebContent\\upload";
      int fileSize = 1024 * 1024 * 3;//10M
      PrintWriter out = resp.getWriter();
      JSONObject obj = new JSONObject();
      
      //요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
      MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
      Enumeration<String> names = multi.getFileNames();
      
      String name = names.nextElement();
      String systemName = multi.getFilesystemName(name);
      
      obj.put("url", "/fileupload/" + systemName);
      out.print(obj.toJSONString());
   }
}



