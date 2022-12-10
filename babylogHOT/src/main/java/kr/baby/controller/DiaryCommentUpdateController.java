package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryCommentVO;

public class DiaryCommentUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int diary_cmt_seq = Integer.parseInt(request.getParameter("diary_cmt_seq"));
		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
		String diary_cmt_content = request.getParameter("diary_cmt_content");

		DiaryCommentVO vo = dao.getDiary_cmt_seq(diary_cmt_seq);
		vo.setDiary_seq(diary_seq);
		vo.setDiary_cmt_content(diary_cmt_content);
		vo.setDiary_cmt_seq(diary_cmt_seq);
		
		dao.updateDiaryComment(vo);
		
		
		return null;
	}

}
