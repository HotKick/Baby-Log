package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryVO;

public class DiaryEditController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
		String diary_title= request.getParameter("diary_title");
		String diary_content= request.getParameter("diary_content");
		DiaryVO vo= new DiaryVO();
		vo.setDiary_seq(diary_seq);
		vo.setDiary_title(diary_title);
		vo.setDiary_content(diary_content);
		dao.updateDiary(vo);
		
		return "redirect:/diary.do";
		
	}

}
