package co.yg.travel.question.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yg.travel.question.mapper.QuestionMapper;
import co.yg.travel.question.service.QuestionService;
import co.yg.travel.question.service.QuestionVO;

@Repository
public class QuestionDAOImpl implements QuestionDAO {
	 // root-context.xml의 sqlSession이 들어온다
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<QuestionVO> selectQuestion() {
		return sqlSession.selectList("QuestionMapper.selectQuestion");
	}
	
}
