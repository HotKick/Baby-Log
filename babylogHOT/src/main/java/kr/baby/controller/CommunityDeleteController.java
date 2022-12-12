package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;

public class CommunityDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int community_seq = Integer.parseInt(request.getParameter("community_seq"));
		System.out.println("외 안나와.."+community_seq);
		
		dao.deleteFree(community_seq);
		return "redirect:/communityFree.do";
	}

}
