package control;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import entity.Usuario;

public class ValidaUsuario {

	 
	public Boolean isLogin(Usuario u){
		 Pattern p = Pattern.compile(".+@.+\\.[a-z]+");
		 Matcher m = p.matcher(u.getLogin());
		 return m.matches(); //retorna true ou false
	}
	
	public Boolean isSenha(Usuario u){
		 Pattern p = Pattern.compile("[0-9a-zA-Z]{3,10}");
		 Matcher m = p.matcher(u.getSenha());
		 return m.matches(); //retorna true ou false
	}
	
	public Boolean isNome(Usuario u){
		 Pattern p = Pattern.compile("[a-z A-Z]{3,50}");
		 Matcher m = p.matcher(u.getNome());
		 return m.matches(); //retorna true ou false
	} //retorna true ou false
	
	
	
	
	
	
	
}
