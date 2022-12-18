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

public class CommunityEditController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();

		String realFolder = request.getServletContext().getRealPath("/img"); // storage 폴더의 실제 주소
		System.out.println("실제폴더" + realFolder);
		System.out.println();

		int maxSize = 5 * 1024 * 1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encoding, policy);

		int community_seq = Integer.parseInt(multi.getParameter("community_seq"));
		String community_title = multi.getParameter("community_title");
		String community_content = multi.getParameter("community_content");
		String community_file = multi.getFilesystemName("community_file");
		


		CommunityVO vo = new CommunityVO();
		vo.setCommunity_seq(community_seq);
		vo.setCommunity_title(community_title);
		vo.setCommunity_content(community_content);
		
		if(community_file == null) {
			community_file = multi.getParameter("noupdate");
		}
		vo.setCommunity_file(community_file);
		dao.updateFree(vo);
		
		return "redirect:/communityFree.do";
		
	}

}
