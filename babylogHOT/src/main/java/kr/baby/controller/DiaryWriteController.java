package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;
import kr.baby.dao.DiaryVO;

public class DiaryWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		int diary_seq= Integer.parseInt(request.getParameter("diary_seq"));
		String mem_id= request.getParameter("mem_id");
		String diary_title= request.getParameter("diary_title");
		String diary_content= request.getParameter("diary_content");
		String diary_file= request.getParameter("diary_file");
		String diary_date= request.getParameter("diary_date");
		String diary_cnt= request.getParameter("diary_cnt");
		String diary_emo= request.getParameter("diary_emo");
		String diary_with= request.getParameter("diary_with");
		
		DiaryVO vo = new DiaryVO();
		
		vo.setDiary_seq(diary_seq);
		vo.setMem_id(mem_id);
		vo.setDiary_title(diary_title);
		vo.setDiary_content(diary_content);
		vo.setDiary_file(diary_file);
		vo.setDiary_date(diary_date);
		vo.setDiary_cnt(diary_cnt);
		vo.setDiary_emo(diary_emo);
		vo.setDiary_with(diary_with);
		
		dao.insertDiary(vo);
		
		return "redirect:/diary.do";

		
	}

}
