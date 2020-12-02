package com.ctrl;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.TodoDoa;
import com.entity.Todo;

@Controller
public class HomeCtrl {
	
	
	@Autowired
	ServletContext context;
	
	TodoDoa todoDao;
	
	@RequestMapping("/home")
	public String Home(Model m) {
		m.addAttribute("page","home");
		
		List<Todo> list  = this.todoDao.getAll();
		
		return "home";
	}
	
	@RequestMapping("/add")
	public String addTodo(Model m) {
		
		Todo t = new Todo();
		m.addAttribute("page","add");
		m.addAttribute("todo",t);
		return "home";
	}
	
	@RequestMapping("/viewtodo")
	public String ViewTodo(Model m) {
		
		m.addAttribute("page","viewtodo");
		return "home";
	}
	
	@RequestMapping(value = "/saveTodo" , method = RequestMethod.POST)
	public String saveTodo( @ModelAttribute("todo") Todo t, Model m) {
		t.setTodoDate(new Date());
		m.addAttribute("page","home");
		System.out.println(t);
		this.todoDao.save(t);
		
		m.addAttribute("msg","Successfully added...");
		return "home";
	}
}
