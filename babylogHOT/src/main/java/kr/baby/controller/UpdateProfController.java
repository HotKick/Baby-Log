package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.MemberVO;

public class UpdateProfController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		
		String realFolder= request.getServletContext().getRealPath("/img");
		int maxSize = 5*1024*1024;
		String encoding="UTF-8";
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encoding,policy);
		
		String mem_id= multi.getParameter("mem_id");
		String mem_prof = multi.getFilesystemName("mem_prof");
		String mem_ment = multi.getParameter("mem_ment");
		System.out.println(mem_prof);
		System.out.println(mem_id);
		System.out.println(mem_ment);
		MemberVO vo = new MemberVO();
		
		vo.setMem_id(mem_id);
		vo.setMem_prof(mem_prof);
		vo.setMem_ment(mem_ment);
		
		
		dao.updateprof(vo);
		System.out.println(vo);
		
		return null;
	}

}
