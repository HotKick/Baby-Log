package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.CommunityVO;
import kr.baby.dao.DiaryVO;

public class CommunityWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
			
			BabyMyBatisDAO dao = new BabyMyBatisDAO();
			
			String realFolder= request.getServletContext().getRealPath("/img");   //storage 폴더의 실제 주소
			System.out.println("실제폴더"+realFolder);
			
			
			int maxSize = 5*1024*1024;
			String encoding="UTF-8";
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();


			MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encoding,policy);
		

			String mem_id= multi.getParameter("mem_id");
			String community_title= multi.getParameter("comuunity_title");
			String community_content= multi.getParameter("community_content");
			String community_file = multi.getFilesystemName("community_file");

			//String diary_cnt= multi.getParameter("diary_cnt");
			//String diary_emo= multi.getParameter("diary_emo");
			//String diary_with= multi.getParameter("diary_with");
			
			CommunityVO vo = new CommunityVO();
			
			vo.setMem_id(mem_id);
			vo.setCommunity_title(community_title);
			vo.setCommunity_content(community_content);
			vo.setCommunity_file(community_file);


			//vo.setDiary_emo(diary_emo);
			//vo.setDiary_with(diary_with);
			
			dao.insertFree(vo);
			
			return "redirect:/CommunityFree.do";

		
		
		

	}

}
