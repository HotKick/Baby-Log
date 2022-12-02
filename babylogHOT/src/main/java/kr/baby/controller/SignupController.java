package kr.baby.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.MemberVO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	  request.setCharacterEncoding("UTF-8");
	  BabyMyBatisDAO dao = new BabyMyBatisDAO();
	 
	  String realFolder = request.getServletContext().getRealPath("/img"); 
	  System.out.println("실제폴더"+realFolder);
	  
	  int maxSize = 5*1024*1024;
	  String encoding = "UTF-8";
	  DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	  
	  MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encoding,policy);
		
		
		   String mem_id = multi.getParameter("mem_id");
		   String mem_pw = multi.getParameter("mem_pw");
		   String mem_name = multi.getParameter("mem_name");
		   String mem_nick = multi.getParameter("mem_nick");
		   String mem_gender = multi.getParameter("mem_gender");
		   String mem_birth = multi.getParameter("mem_birth");
		   String mem_tel = multi.getParameter("mem_tel");
		   String mem_type = multi.getParameter("mem_type");
		   String mem_prof = multi.getFilesystemName("mem_prof");
		  
		   MemberVO vo = new MemberVO();
		   
		   vo.setMem_id(mem_id);
		   vo.setMem_pw(mem_pw);
		   vo.setMem_name(mem_name);
		   vo.setMem_nick(mem_nick);
		   vo.setMem_gender(mem_gender);
		   vo.setMem_birth(mem_birth);
		   vo.setMem_tel(mem_tel);
		   vo.setMem_type(mem_type);
		   vo.setMem_prof(mem_prof);
		   
		   //확인용 
		   System.out.println("파일" + mem_prof);
		   System.out.println("닉네임" +mem_nick);
		   
		   dao.signup(vo);
		   
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원가입완료되었습니다.');"
					+ "location.href='MainPage.do';</script>");
			writer.flush();

		return null;
	}

}
