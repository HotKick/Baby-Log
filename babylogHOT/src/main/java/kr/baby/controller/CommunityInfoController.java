package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;

public class CommunityInfoController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		String mem_id= request.getParameter("mem_id");
		String community_title= request.getParameter("community_title");
		String community_content= request.getParameter("community_content");
		String community_file= request.getParameter("community_file");
		String community_date= request.getParameter("community_date");
		String community_type= request.getParameter("community_type");
		
		CommunityVO vo = new CommunityVO();
		
		vo.setMem_id(mem_id);
		vo.setCommunity_title(community_title);
		vo.setCommunity_content(community_content);
		vo.setCommunity_file(community_file);
		vo.setCommunity_date(community_date);
		vo.setCommunity_type(community_type);
		
		dao.insertInfo(vo);
		
		return "redirect:/communityInfo.do";

	
	}

}
