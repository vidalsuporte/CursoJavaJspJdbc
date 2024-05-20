package servlets;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelLogin;
/**
 * Servlet implementation class ServletLogin
 */


@WebServlet(urlPatterns = {"/principal/ServletLogin", "/ServletLogin"})

public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String login = request.getParameter("login"); 
		String password = request.getParameter("password"); 
		String url = request.getParameter("url");
		
		
		if(login!= null && !login.isEmpty() && password!= null && !password.isEmpty()){
		
			ModelLogin modelLogin = new  ModelLogin(login,password);
		
		
		
		if(modelLogin.getLogin().equalsIgnoreCase("admin") && modelLogin.getSenha().equalsIgnoreCase("admin")) {
			
		request.getSession().setAttribute("usuario", modelLogin.getLogin());	
		
		if(url == null || url.equals("null")) {
			url = "principal/principal.jsp";
		}
		
		RequestDispatcher redirecionar = request.getRequestDispatcher(url);
		request.setAttribute("msg", "Login realizado com sucesso")	;
		redirecionar.forward(request, response);
		System.out.println(modelLogin);
		
		}else {
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
			request.setAttribute("msg", "Informe o login e senha novamente!")	;
			redirecionar.forward(request, response);
		}
		
		}else {

			RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
			request.setAttribute("msg", "Informe o login e senha novamente!")	;
			redirecionar.forward(request, response);
		}
		
	}

}
