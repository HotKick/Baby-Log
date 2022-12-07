package kr.baby.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryCommentVO;
import kr.baby.dao.DiaryVO;

public class DiaryDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		DiaryVO vo = new DiaryVO();
		
		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
		vo=dao.getDiary_seq(diary_seq);
		
	
		List<DiaryCommentVO> list = dao.ListDiaryComment();
		
		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		
				
		return "diaryDetail";
	
	
	}

}
