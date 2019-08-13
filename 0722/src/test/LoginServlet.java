package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid=req.getParameter("userid");
		String passwd=req.getParameter("passwd");
		
		resp.setContentType("text/html; charset=EUC-KR");
		PrintWriter out=resp.getWriter();
		out.print("<html><body>");
		out.print("아이디 : "+userid+"<br/>");
		out.print("비밀번호 : "+passwd+"<br/>");
		out.print("</body></html>");
		out.close();
		
	}
	
}
