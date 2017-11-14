package persistence;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import entity.Usuario;

public class UsuarioDao {

	Session session;
	Transaction transaction;
	Query query;
	Criteria criteria;
	
	//gravar..
	public void create(Usuario u) throws Exception{
		session = HibernateUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		session.save(u);
		transaction.commit();
		session.close();
	}
	
	//logar..
	public Usuario authenticateHql(String login, String senha) throws Exception{
		session = HibernateUtil.getSessionFactory().openSession();
		
		//HQL - Hibernate Query Language
		query = session.createQuery
				("from Usuario u where u.login = :p1 and u.senha = :p2");
		query.setParameter("p1", login);
		query.setParameter("p2", senha);
		Usuario u = (Usuario) query.uniqueResult();
		
		session.close();
		
		return u; //retorna o usuario
	}
	
	//logar..
	public Usuario authenticateCriteria(String login, String senha) throws Exception{
		
		session = HibernateUtil.getSessionFactory().openSession();
		
		//Criterios..
		criteria = session.createCriteria(Usuario.class);
		criteria.add(Restrictions.and(
					Restrictions.eq("login", login),
					Restrictions.eq("senha", senha)
				));
		
		Usuario u = (Usuario) criteria.uniqueResult();		
		session.close();
		
		return u;
	}
	
}








