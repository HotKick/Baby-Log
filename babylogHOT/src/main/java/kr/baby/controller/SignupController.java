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
		   String mem_gender = request.getParameter("mem_gender");
		   String mem_birth = request.getParameter("mem_birth");
		   String mem_tel = request.getParameter("mem_tel");
		   String mem_type = request.getParameter("mem_type");

		   MemberVO vo = new MemberVO();
		   
		   vo.setMem_id(mem_id);
		   vo.setMem_pw(mem_pw);
		   vo.setMem_name(mem_name);
		   vo.setMem_nick(mem_nick);
		   vo.setMem_gender(mem_gender);
		   vo.setMem_birth(mem_birth);
		   vo.setMem_tel(mem_tel);
		   vo.setMem_type(mem_type);
		   
		   //확인용 
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
