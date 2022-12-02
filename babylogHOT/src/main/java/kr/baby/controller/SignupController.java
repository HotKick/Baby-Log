package kr.baby.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.MemberVO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	  request.setCharacterEncoding("UTF-8");
	  BabyMyBatisDAO dao = new BabyMyBatisDAO();
	 
		   String mem_id = request.getParameter("mem_id");
		   String mem_pw = request.getParameter("mem_pw");
		   String mem_name = request.getParameter("mem_name");
		   String mem_nick = request.getParameter("mem_nick");
		   
		   System.out.println("mem_id"+mem_id);
		  
		   
		   String mem_gender = request.getParameter("mem_gender");
		   String mem_type = request.getParameter("mem_type");
		   
		   String mem_birth = request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day");
		  
		   String mem_tel = request.getParameter("mem_tel");

		   MemberVO mvo = new MemberVO();
		   
		   mvo.setMem_id(mem_id);
		   mvo.setMem_pw(mem_pw);
		   mvo.setMem_name(mem_name);
		   mvo.setMem_gender(mem_gender);
		   mvo.setMem_nick(mem_nick);
		   mvo.setMem_type(mem_type);
		   mvo.setMem_birth(mem_birth);
		   mvo.setMem_tel(mem_tel);
		   
		   
		   //확인용 
		   System.out.println("흠"+mem_birth);
		   System.out.println("성별" +mem_gender);
		   System.out.println("가족관계"+mem_type);
		   System.out.println("전화번호" + mem_tel);
		   
		   dao.signup(mvo);
		   
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원가입완료되었습니다.');"
					+ "location.href='MainPage.do';</script>");
			writer.flush();

		return null;
	}

}
