package co.yg.travel.question.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yg.travel.question.mapper.QuestionMapper;
import co.yg.travel.question.service.QuestionService;
import co.yg.travel.question.service.QuestionVO;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionDAO questionDAO;

	@Override
	public List<QuestionVO> selectQuestion() {
		return questionDAO.selectQuestion();
		
	}

	

}
