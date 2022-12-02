package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;

public class CommunityEditController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		int community_seq = Integer.parseInt(request.getParameter("community_seq"));
		String community_title= request.getParameter("community_title");
		String community_content= request.getParameter("community_content");
		CommunityVO vo= new CommunityVO();
		vo.setCommunity_seq(community_seq);
		vo.setCommunity_title(community_title);
		vo.setCommunity_content(community_content);
		dao.updateFree(vo);
		
		return "redirect:/communityFree.do";
		
	}

}
