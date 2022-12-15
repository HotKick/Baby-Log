package kr.baby.android;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryVO;
import kr.baby.dao.MemberVO;

@WebServlet("/login")
public class login extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// response.setContentType("text/json;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberVO vo = new MemberVO();
		vo.setMem_id(id);
		vo.setMem_pw(pw);
		
		writer.print(id);
		writer.print(pw);
		
		MemberVO mvo = dao.Login(vo);
		
		

		

	}
		
	
	
	
	
	
	}


