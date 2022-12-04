package kr.baby.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.QuestionVO;
public class QuestionWriteController implements Controller {
	
	BabyMyBatisDAO dao = new BabyMyBatisDAO();
	
	String realFolder= request.getServletContext().getRealPath("/img");   //storage 폴더의 실제 주소
	System.out.println("실제폴더"+realFolder);
	
	
	int maxSize = 5*1024*1024;
	String encoding="UTF-8";
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();


	MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encoding,policy);


	String mem_id= multi.getParameter("mem_id");
	String q_title= multi.getParameter("q_title");
	String q_content= multi.getParameter("q_content");
	String q_file = multi.getFilesystemName("q_file");

	//String diary_cnt= multi.getParameter("diary_cnt");
	//String diary_emo= multi.getParameter("diary_emo");
	//String diary_with= multi.getParameter("diary_with");
	
	QuestionVO vo = new QuestionVO();
	
	vo.setMem_id(mem_id);
	vo.setQ_title(q_title);
	vo.setQ_content(q_content);
	vo.setQ_file(q_file);


	//vo.setDiary_emo(diary_emo);
	//vo.setDiary_with(diary_with);
	
	dao.insertQuestion(vo);
	
	return "redirect:/question.do";


}
