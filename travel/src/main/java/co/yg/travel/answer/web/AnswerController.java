package co.yg.travel.answer.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yg.travel.answer.service.AnswerService;

@Controller
public class AnswerController {
	
	@Autowired
	private AnswerService answerService;
	
	@RequestMapping("/answer.do")
	String answer(Model model) {
		model.addAttribute("results", answerService.answerList());
		return "result/result";
	}
	
}
