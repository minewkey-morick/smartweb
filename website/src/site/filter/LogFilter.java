package site.filter;

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class LogFilter implements Filter{


	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Webmarket 초기화...");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println(" 접속한 글라이언트 IP : "+request.getRemoteAddr());
		long start=System.currentTimeMillis();
		System.out.println(" 접근한 URL 경로 : "+getURLPath(request));
		System.out.println(" 요청 처리 시작 시각 : "+getCurrentTime());
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		
	}
	
	private String getURLPath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath="";
		String queryString="";
		if(request instanceof HttpServletRequest) {
			req=(HttpServletRequest)request;
			currentPath=req.getRequestURI();
			queryString=req.getQueryString();
			queryString=queryString==null?"":"?"+queryString;
		}
		return currentPath+queryString;
	}
	
	private String getCurrentTime() {
		DateFormat formatter =new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar=Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
}
