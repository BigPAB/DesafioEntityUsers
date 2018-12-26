package br.com.desafio.DAO;



import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;

import br.com.desafio.model.User;


@Repository
public class UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	/*private final EntityManager entityManager = EntityManagerUtil.getEntityManager();
	public EntityManager getEntityManager(){
		return entityManager;
	}*/

	public void salvarUser(User user) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		System.out.println(dateFormat.format(date));
		user.setRegister_date(date);
		Session session = getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.persist(user);
		tx.commit();
		session.close();
		System.out.println("Saved");
	}
	
	public User findUserByUsername(String username) {
		Session session = getSessionFactory().openSession();
		Query selecao = session.createQuery("from User where username= :username");
		selecao.setParameter("username", username);
		User user = (User)selecao.list().get(0);
		System.out.println("User Data\n" + user.getId() + "\n" 
				+ user.getName() + "\n" + user.getSurname() + "\n" + user.getEmail() + "\n"
				+ user.getPassword() + "\n" + user.getRegister_date() + "\n" + user.getUsername() + "\n" + user.getPhone() + "\n" + user.isIs_enabled());
		session.close();
		return user;
	}
	
	public User findUserByEmail(String email) {
		Session session = getSessionFactory().openSession();
		Query selecao = session.createQuery("from User where email= :email");
		selecao.setParameter("email", email);
		User user = (User)selecao.list().get(0);
		System.out.println("User Data\n" + user.getId() + "\n" 
				+ user.getName() + "\n" + user.getSurname() + "\n" + user.getEmail() + "\n"
				+ user.getPassword() + "\n" + user.getRegister_date() + "\n" + user.getUsername() + "\n" + user.getPhone() + "\n" + user.isIs_enabled());
		session.close();
		return user;
	}
	
	public User findUserBy(String data) {
		Integer id = Integer.valueOf( data);
		Session session = getSessionFactory().openSession();
		User user = (User)session.get(User.class, id);
		System.out.println(user.getName());
		session.close();
		return user;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<User> listarUser() {
		List<User> users;
		Session session = getSessionFactory().openSession();
		Query selecao = session.createQuery("select user from User user");
		users = selecao.list();
		session.close();
		return users;
	}

	
	
}
