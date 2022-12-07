package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;

public class DiaryCommentDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
		int diary_cmt_seq = Integer.parseInt(request.getParameter("diary_cmt_seq"));
		dao.deleteDiaryComment(diary_cmt_seq);
		return "redirect:/diaryDetail.do?diary_seq="+diary_seq;
	}

}
