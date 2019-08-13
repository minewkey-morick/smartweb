package test;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/hello")
public class servletTest extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("hello servlet ��û");
		response.setContentType("text/html");
		response.setCharacterEncoding("EUC-KR");
		Calendar c=Calendar.getInstance();
		int hour=c.get(Calendar.HOUR_OF_DAY);
		int minute=c.get(Calendar.MINUTE);
		int second=c.get(Calendar.SECOND);
		
		PrintWriter out=response.getWriter();
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("����ð��� ");
		out.write(Integer.toString(hour));
		out.write("�� ");
		out.write(Integer.toString(minute));
		out.write("�� ");
		out.write(Integer.toString(second));
		out.write("�� �Դϴ�.");
		out.write("</H1></BODY></HTML>");
		out.close();
	}

}
