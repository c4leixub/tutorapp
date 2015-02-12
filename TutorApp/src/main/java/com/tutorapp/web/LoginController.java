package com.tutorapp.web;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class LoginController {
 
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
 
		model.addAttribute("title", "Spring Security Hello World");
		model.addAttribute("message", "This is welcome page!");
		return "hello";
 
	}
 
	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
 
		model.addAttribute("title", "Spring Security Hello World");
		model.addAttribute("message", "This is protected page!");
		return "admin";

	}
 
}
