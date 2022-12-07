package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryCommentVO;

public class DiaryCommentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		int diary_seq = Integer.parseInt(request.getParameter("diary_seq"));
		String diary_cmt_content = request.getParameter("diary_cmt_content");
		String mem_id = request.getParameter("mem_id");
		String mem_nick = request.getParameter("mem_nick");
		System.out.println(mem_id);
		System.out.println(mem_nick);
	
		DiaryCommentVO vo = new DiaryCommentVO();
		
		vo.setDiary_seq(diary_seq);
		vo.setMem_id(mem_id);
		vo.setMem_nick(mem_nick);
		vo.setDiary_cmt_content(diary_cmt_content);
		
		dao.insertDiaryComment(vo);
		
		
		return "redirect:/diaryDetail.do?diary_seq="+diary_seq;
	}

}
