package br.com.desafio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.desafio.DAO.UserDAO;
import br.com.desafio.model.User;

@Service
public class UserService {
	
	@Autowired
	private UserDAO userDAO;

	public String saveUser(User user) {
		 userDAO.salvarUser(user);
		return "deu";
	}

	public User findUserBy(String data) {
		return userDAO.findUserBy(data);
		
	}

	public List<User> listarUsers() {
		return userDAO.listarUser();
		
	}

	public User findUserByUsername(String username) {
		userDAO.findUserByUsername(username);
		return null;
	}

	public User findUserByEmail(String email) {
		userDAO.findUserByEmail(email);
		return null;
	}

}
