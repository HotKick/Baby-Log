package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;

public class CommunityWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
			
			BabyMyBatisDAO dao = new BabyMyBatisDAO();
			
			String realFolder= request.getServletContext().getRealPath("/img"); 
			System.out.println("실제폴더"+realFolder);
			//절대경로를 넣자 
			
			int maxSize = 5*1024*1024;
			String encoding="UTF-8";
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();


			MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encoding,policy);
		

			String mem_id= multi.getParameter("mem_id");
			String mem_nick = multi.getParameter("mem_nick");
			String community_type = multi.getParameter("community_type");
			String community_title= multi.getParameter("comuunity_title");
			String community_content= multi.getParameter("community_content");
			String community_file = multi.getFilesystemName("community_file");
			System.out.println(mem_nick);
			System.out.println(community_title);
			
			System.out.println(mem_id);
			
			CommunityVO vo = new CommunityVO();
			CommunityVO vo1 = new CommunityVO();
			CommunityVO vo2 = new CommunityVO();
			

			String result = null;
			System.out.println(community_type);
			if(community_type.equals("01")) {
				result = "redirect:/communityFree.do";
				vo.setMem_id(mem_id);
				vo.setMem_nick(mem_nick);
				vo.setCommunity_title(community_title);
				vo.setCommunity_content(community_content);
				vo.setCommunity_file(community_file);
				vo.setCommunity_type(community_type);
				dao.insertFree(vo);
				
			}else if(community_type.equals("02")) {
				result = "redirect:/communityInfo.do";
				vo1.setMem_id(mem_id);
				vo1.setMem_nick(mem_nick);
				vo1.setCommunity_title(community_title);
				vo1.setCommunity_content(community_content);
				vo1.setCommunity_file(community_file);
				vo1.setCommunity_type(community_type);
				dao.insertInfo(vo1);
			}else if(community_type.equals("03")){
				result = "redirect:/communityTrade.do";
				vo2.setMem_id(mem_id);
				vo2.setMem_nick(mem_nick);
				vo2.setCommunity_title(community_title);
				vo2.setCommunity_content(community_content);
				vo2.setCommunity_file(community_file);
				vo2.setCommunity_type(community_type);
				dao.insertTrade(vo2);

			}
			System.out.println(result);
			return result;


	}

}
