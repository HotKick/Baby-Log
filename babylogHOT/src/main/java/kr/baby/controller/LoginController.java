package kr.baby.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.baby.dao.BabyMyBatisDAO;
import kr.baby.dao.MemberVO;

public class LoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


				//Jsp로부터 파라미터 수집(id,pw)
		
				String mem_id = request.getParameter("mem_id");
				System.out.println("LoginController id : "+ mem_id);
				
				String mem_pw = request.getParameter("mem_pw");
				System.out.println("LoginController pw : "+mem_pw);
				
				MemberVO vo = new MemberVO();
				vo.setMem_id(mem_id);
				vo.setMem_pw(mem_pw);
				
				BabyMyBatisDAO dao = new BabyMyBatisDAO();
				MemberVO mvo = dao.memberLogin(vo);
						
		
				
				if(mvo!=null) {
					HttpSession session = request.getSession();
					//객체 바인딩
					session.setAttribute("loginVO",mvo);
				}
				return "redirect:/main.do";
		
				

			}

	
	}

