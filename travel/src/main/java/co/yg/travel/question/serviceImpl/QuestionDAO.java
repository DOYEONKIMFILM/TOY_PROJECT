package co.yg.travel.question.serviceImpl;

import java.util.List;

import co.yg.travel.question.service.QuestionVO;

public interface QuestionDAO {
	List<QuestionVO> selectQuestion();
}
