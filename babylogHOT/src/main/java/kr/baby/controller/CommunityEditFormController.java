package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;

public class CommunityEditFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int community_seq = Integer.parseInt(request.getParameter("community_seq"));
		CommunityVO vo = dao.getCommunity_seq(community_seq);
		request.setAttribute("vo", vo);
		
		return "communityEdit";
	}

}
