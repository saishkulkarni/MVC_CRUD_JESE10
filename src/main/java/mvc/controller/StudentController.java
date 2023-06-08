package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.dto.Student;
import mvc.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService service;

	@PostMapping("save")
	public ModelAndView save(@ModelAttribute Student student, @RequestParam String date) {
		return service.save(student, date);
	}
	
	@GetMapping("fetchall")
	public ModelAndView fetchAll()
	{
		return service.fetchAll();
	}
}
