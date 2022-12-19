package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.MemberVO;

public class KakaoLoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		String mem_id = request.getParameter("mem_id");
		String mem_nick = request.getParameter("mem_nick");
		System.out.println(mem_id);
		
		MemberVO vo = new MemberVO();
		
		vo.setMem_id(mem_id);
		vo.setMem_nick(mem_nick);
		
		dao.kakaosignup(vo);
		
		MemberVO mvo=dao.getMember(mem_id);
		HttpSession session=request.getSession();
		session.setAttribute("mvo", mvo);
		
		return null;
	}

}
