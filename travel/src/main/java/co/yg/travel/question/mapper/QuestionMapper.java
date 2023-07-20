package co.yg.travel.question.mapper;

import java.util.List;

import co.yg.travel.question.service.QuestionVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("QuestionMapper")
public interface QuestionMapper {
	List<QuestionVO> selectQuestion();
}
