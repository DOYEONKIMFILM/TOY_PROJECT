package co.yg.travel.answer.serviceImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yg.travel.answer.service.AnswerService;
import co.yg.travel.answer.service.AnswerVO;

@Service("answerService")
public class AnswerServiceImpl implements AnswerService {
	
	@Autowired
	private SqlSessionTemplate query;
	
	@Override
	public List<AnswerVO> answerList() {
		return query.selectList("AnswerMapper.answerList");
	}
	
}
