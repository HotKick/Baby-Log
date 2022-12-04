package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션 s정보 가져오기
				HttpSession session = request.getSession();
				session.invalidate(); // 세션 무효화로 저장되어있던 정보 없애기
				//무효화 된 정보 가지고 메인페이지로 리다이렉트
				return "redirect:/main.do";	
	}

}
