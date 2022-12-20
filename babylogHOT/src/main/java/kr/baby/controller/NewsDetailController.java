package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryVO;
import kr.baby.dao.NewsVO;

public class NewsDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		NewsVO vo = new NewsVO();
		
		int nn_seq = Integer.parseInt(request.getParameter("nn_seq"));
		System.out.println("------------------"+nn_seq);
		vo=dao.detailNews(nn_seq);
		request.setAttribute("vo", vo);
		
	
		return "newsDetail";
	}

}
