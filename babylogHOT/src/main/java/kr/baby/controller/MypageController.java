package kr.baby.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryVO;
import kr.baby.dao.MemberVO;

public class MypageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		List<DiaryVO> list =dao.listMyDiary();
		request.setAttribute("list",list);
		
		return "mypage";
	}

}
