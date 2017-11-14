package control;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Usuario;
import persistence.UsuarioDao;

public class UsuarioAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	
	private Usuario usuario; //página de cadastro
	private Usuario usuariologin; //página de login
	
	
	public UsuarioAction() {
	 
		usuario = new Usuario();
		usuariologin = new Usuario();
	}

	public Usuario getUsuariologin() {
		return usuariologin;
	}

	public void setUsuariologin(Usuario usuariologin) {
		this.usuariologin = usuariologin;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	   public void validate(){
		   ValidaUsuario valida = new ValidaUsuario();
		   
		  if (usuario.getLogin() != null && valida.isLogin(usuario)==false){
			addFieldError("usuario.login","Login o Padrão é E-mail");
		  }
		  if (usuario.getNome() != null && valida.isNome(usuario)==false){
		    addFieldError("usuario.nome","Nome Fora da Regra Letras 3 a 35"); 
		  }
		  if (usuario.getSenha() != null && valida.isSenha(usuario)==false){
            addFieldError("usuario.senha","Senha Fora da Regra letras e numeros de 3 a 10"); 
	      }
		  
	   }
	   
	   
 public String gravar(){
	 HttpServletRequest request= (HttpServletRequest) 
	 	ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
	  try{
		  //gravacao (esperando o Dao)
		  
		UsuarioDao d = new UsuarioDao();
		d.create(usuario); //gravando..
	
		usuario = new Usuario();
	
	request.setAttribute("msg","Usuario cadastrado com sucesso.");
		 
 	   }catch(Exception ex){
 		   //O Erro só ocorre quando for gravar e ele não permitir ...
 	    request.setAttribute("msg","Error:" + ex.getMessage());	   
    	return ERROR;	   
	  }
	return SUCCESS;
  }
	
	
 	public String logar(){
 	
 		HttpServletRequest request= (HttpServletRequest) 
 			 ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
 		
 		try{
 			
 			UsuarioDao d = new UsuarioDao();
 			Usuario u = d.authenticateCriteria
 					(usuariologin.getLogin(), usuariologin.getSenha());
 			
 			if(u != null){ //foi encontrado..
 				
 				//sessão..
 				Map sessao = ActionContext.getContext().getSession();
 				sessao.put("user", u); //armazenando em sessão..
 				return SUCCESS;
 			}
 			else{
 				throw new Exception("Acesso Negado. Login ou Senha invalidos.");
 			} 				
 		}
 		catch(Exception e){
 			request.setAttribute("msg", e.getMessage());
 			return ERROR;
 		} 		
 	}	
	
 	
 	//sair do sistema..
 	public String logout(){
 		
 		//remover o usuario da sessão..
 		ActionContext.getContext().getSession().remove("user");
 		ActionContext.getContext().getSession().clear();
 		
 		return SUCCESS;
 	}
 	
 	
 	

}











