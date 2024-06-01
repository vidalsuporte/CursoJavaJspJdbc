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
 * Servlet implementation class ServletUsuarioController
 */
@WebServlet(urlPatterns = { "/principal/ServletUsuarioController", "/ServletUsuarioController" })
public class ServletUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletUsuarioController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");

		ModelLogin modelLogin = new ModelLogin();

		modelLogin.setEmail(email);
		modelLogin.setLogin(login);
		modelLogin.setNome(nome);
		modelLogin.setSenha(senha);
		
		if(id!=null && !id.isEmpty()) {
		modelLogin.setId(Long.parseLong(id) );
		}else {
			modelLogin.setId(0);
		}
		
		System.out.println(modelLogin);

		RequestDispatcher redireciona = request.getRequestDispatcher("principal/usuario.jsp");
		request.setAttribute("modolLogin", modelLogin);
		redireciona.forward(request, response);

	}

}
