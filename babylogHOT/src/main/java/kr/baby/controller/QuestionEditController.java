package kr.baby.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.QuestionVO;

public class QuestionEditController implements Controller {

	

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int q_seq = Integer.parseInt(request.getParameter("q_seq"));
		String q_title= request.getParameter("q_title");
		String q_content= request.getParameter("q_content");
		QuestionVO vo= new QuestionVO();
		vo.setQ_seq(q_seq);
		vo.setQ_title(q_title);
		vo.setQ_content(q_content);
		dao.updateQuestion(vo);
		
		return "redirect:/question.do";
}
}
