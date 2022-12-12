package kr.baby.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;


public class CommunityTradeController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		List<CommunityVO> list = dao.listTrade();
		request.setAttribute("list", list);
		
		return "communityTrade";
	}

}
