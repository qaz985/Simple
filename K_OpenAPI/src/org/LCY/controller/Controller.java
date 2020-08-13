package org.LCY.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.LCY.model.Action;


@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String requestURI = request.getRequestURI();   				
		String contextPath = request.getContextPath(); 				
		String cmd = requestURI.substring(contextPath.length()); 
		
		Action action = new Action();
		action.api(request, response);
		
//		switch (cmd) {
//		
//		case "/api.do":
//			action = new Action();
//			break;
//	
//		}
		
//		String path = action.process(request);
//		
//		request.getRequestDispatcher(path).forward(request, response);
//		response.sendRedirect(path);
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	

}
