package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.NewsVO;

public class NewsWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		 String realFolder= request.getServletContext().getRealPath("/img"); 
		
		// 내꺼 파일 저장경로로 설정 해보겠음
		System.out.println("실제폴더"+realFolder);
		//절대경로를 넣자 
		
		int maxSize = 5*1024*1024;
		String encoding="UTF-8";
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();


		MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encoding,policy);
	
		
		String nn_title = multi.getParameter("nn_title");
		String nn_content = multi.getParameter("nn_content");
		String nn_file = multi.getFilesystemName("nn_file");
		System.out.println(nn_file);
		System.out.println(nn_title);
		
		NewsVO vo  = new NewsVO();
		
		vo.setNn_file(nn_file);
		vo.setNn_title(nn_title);
		vo.setNn_content(nn_content);
		
		dao.insertNews(vo);
	
		return "redirect:/newsGov.do";
}
}