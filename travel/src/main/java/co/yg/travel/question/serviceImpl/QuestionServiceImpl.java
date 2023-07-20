package co.yg.travel.question.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yg.travel.question.mapper.QuestionMapper;
import co.yg.travel.question.service.QuestionService;
import co.yg.travel.question.service.QuestionVO;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {

	/*
	 * @Resource(name="SqlSession") private SqlSession sqlSession;
	
	
	@Override
	public List<QuestionVO> selectQuestion() {
		return null;
		//return sqlSession.selectList("QuestionMapper.selectQuestion");
	}
	 */
	
	@Autowired
	private QuestionMapper qmap;
	
	@Override
	public List<QuestionVO> selectQuestion() {
		// if(a>b) insert else update
		// for(int a=0; a<list.length; a++) {if(a=0) qnaNo =  1 else qnaNo =2 select }
		return qmap.selectQuestion();
	}
	
	

}
