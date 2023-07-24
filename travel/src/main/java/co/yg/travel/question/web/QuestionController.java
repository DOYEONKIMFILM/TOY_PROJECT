package co.yg.travel.question.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yg.travel.question.service.QuestionService;
import co.yg.travel.question.service.QuestionVO;

@Controller
public class QuestionController {

	@Autowired
	public QuestionService questionService;

	@RequestMapping("/question.do")
	public String question(Model model) {
		List<QuestionVO> list = questionService.selectQuestion();
		model.addAttribute("question", list);
		System.out.print("test test =========================================test" + list.get(0).getQnaQ());
		return "question/question";
	}
}
