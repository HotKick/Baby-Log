package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.TradeVO;

public class CommunityTradeController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		String mem_id= request.getParameter("mem_id");
		String community_title= request.getParameter("community_title");
		String community_content= request.getParameter("community_content");
		String community_file= request.getParameter("community_file");
		String community_date= request.getParameter("community_date");
		
		TradeVO vo = new TradeVO();
		
		vo.setMem_id(mem_id);
		vo.setTrade_title(community_title);
		vo.setTrade_content(community_content);
		vo.setTrade_file(community_file);
		vo.setTrade_date(community_date);
		
		dao.insertTrade(vo);
		
		return "redirect:/communityTrade.do";
	}

}
