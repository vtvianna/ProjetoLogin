package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Usuario;
import servico.UsuarioServico;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = new Usuario();
		HttpSession session = request.getSession();
		
		usuario.setUsuario(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		
		UsuarioServico servico = new UsuarioServico();
		
		
		
		if(servico.verificarUsuario(usuario)) {
			List<Usuario> lista = servico.listarUsuario();
			session.setAttribute("lista", lista);
			System.out.println("lista lida --> " + lista.get(0).getNome());
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}