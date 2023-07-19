package co.yg.travel.answer.mapper;

import java.util.List;

import co.yg.travel.answer.service.AnswerVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("AnswerMapper")
public interface AnswerMapper {
	List<AnswerVO> answerList();
}
