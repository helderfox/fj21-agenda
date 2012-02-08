package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Contador extends HttpServlet {
	private int contador = 0;
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		contador++;
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("O contador agora �: " + contador);
		out.println("</body>");
		out.println("</html>");
	}
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		log("Iniciando o servlet...");
	}
	
	public void destroy() {
		super.destroy();
		log("Destruindo o servlet.");
	}
}
