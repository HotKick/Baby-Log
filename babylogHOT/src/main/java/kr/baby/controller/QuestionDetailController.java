package kr.baby.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.QuestionVO;
public class QuestionDetailController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int q_seq = Integer.parseInt(request.getParameter("q_seq"));
		QuestionVO vo= new QuestionVO();
		vo = dao.getQ_seq(q_seq);
		dao.countQuestion(q_seq);
		request.setAttribute("vo", vo);
		
		return "questionDetail";
	}

}
