package servico;

import java.util.List;

import dao.UsuarioDAO;
import modelo.Usuario;

public class UsuarioServico {
	UsuarioDAO dao = new UsuarioDAO();

	public boolean verificarUsuario(Usuario usuario) {
		
		
		Usuario u = dao.validarLogin(usuario);
		
		if(u.getNome() != null) {
			return true;
		} else {
			return false;
		}
	}
public List<Usuario> listarUsuario(){
	List<Usuario> lista = dao.listar();
	return lista;
}
}