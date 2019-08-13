package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/textfield")
public class TextfieldServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("name");
		
		resp.setContentType("text/html; charset=EUC-KR");
		PrintWriter out=resp.getWriter();
		out.print("<html><body>");
		out.print("�̸� : "+name+"<br/>");
		out.print("</body></html>");
		out.close();
	}
	
}
