package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryVO;

public class DiaryEditController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BabyMyBatisDAO dao = new BabyMyBatisDAO();

		String realFolder = request.getServletContext().getRealPath("/img"); // storage 폴더의 실제 주소
		System.out.println("실제폴더" + realFolder);

		int maxSize = 5 * 1024 * 1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encoding, policy);


		String diary_title = multi.getParameter("diary_title");
		String diary_content = multi.getParameter("diary_content");
		String diary_file = multi.getFilesystemName("diary_file");

		// String diary_cnt= multi.getParameter("diary_cnt");
		// String diary_emo= multi.getParameter("diary_emo");
		// String diary_with= multi.getParameter("diary_with");

		DiaryVO vo = new DiaryVO();

		vo.setDiary_title(diary_title);
		vo.setDiary_content(diary_content);
		vo.setDiary_file(diary_file);

		// vo.setDiary_emo(diary_emo);
		// vo.setDiary_with(diary_with);

		dao.insertDiary(vo);

		return "redirect:/diary.do";



	}

}
