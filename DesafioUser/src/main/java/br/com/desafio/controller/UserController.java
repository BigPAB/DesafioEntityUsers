package br.com.desafio.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.desafio.model.User;
import br.com.desafio.service.UserService;


@Controller

public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(path="searchUser")
	public ModelAndView searchUser() {
		ModelAndView mAv = new ModelAndView("Search", "command", new User());
		
		return mAv;
		
	}
	
	
	@RequestMapping(path="form")
	public ModelAndView cadastroUser() {
		ModelAndView mAv = new ModelAndView("formulario", "command", new User());
		
		return mAv;
		
	}
	
	@RequestMapping(value = "saveUser", method = {RequestMethod.GET , RequestMethod.POST})
	public String saveUser(User user, ModelMap mm) {
		mm.addAttribute("usuario", userService.saveUser(user));
		
		return "Listar";
	}
	
	@RequestMapping(value = "findUser" , method = {RequestMethod.GET , RequestMethod.POST})
	public String findUserBy(@RequestParam("id") String data ,
							@RequestParam("email") String email,
							@RequestParam("username") String username, ModelMap mm) {
		System.out.println(data + email + username);
		if(data.length() <= 0 && email.length() <= 0){
			mm.addAttribute("user", userService.findUserByUsername(username));
		}else if(data.length() <= 0 && username.length() <= 0){
			mm.addAttribute("user", userService.findUserByEmail(email));
		}else if(email.length() <= 0 && username.length() <= 0){
			mm.addAttribute("user", userService.findUserBy(data));
		}
		
		return "Search";
	}
	
	@RequestMapping(path="list")
	public String listarUsers(ModelMap mm) {
		
		Map<Integer, User> listaUsers = new HashMap<Integer, User>();
		List<User> lista;
		lista =  userService.listarUsers();
		mm.addAttribute("listaUsers" , lista);
		
		return "Listar";
	}

}
