package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;

public class DiaryDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
		System.out.println("글 번호:"+diary_seq);
		dao.deleteDiary(diary_seq);
		return "redirect:/diary.do";
	}

}
