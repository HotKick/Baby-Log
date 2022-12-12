package kr.baby.android;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.DiaryVO;

@WebServlet("/dirary")
public class diary extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/json;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		BabyMyBatisDAO dao = new BabyMyBatisDAO();
		Gson gson = new Gson();
		
		List<DiaryVO> list = dao.listDiary(); 
		
		String diary_json = gson.toJson(diary);
		
		writer.print(diary_json);
		
	}

}
