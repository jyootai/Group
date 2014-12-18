package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Student;
import vo.Teacher;

import dao.StudentDao;
import dao.TeacherDao;

public class LogoutServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		/*销毁所有session，跳转回登录界面*/
		response.setHeader("Cache-Control","no-cache");
		request.getSession().invalidate();
		response.sendRedirect("/group/index.jsp");
	}
	
}
