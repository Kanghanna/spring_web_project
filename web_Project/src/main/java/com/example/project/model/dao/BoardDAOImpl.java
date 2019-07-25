package com.example.project.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.model.dto.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	SqlSession sqlSession; //이 프로젝트는 mybatis를 사용하기 때문에 SqlSession을 사용, 하이버네이트를 쓴다면 다른 인젝션 사용함
	
	@Override
	public void create(BoardVO vo) {
		sqlSession.insert("board.insert", vo);
	}

	@Override
	public BoardVO read(int bno) {

		return sqlSession.selectOne("board.view", bno);
	}

	@Override
	public void update(BoardVO vo) {
		sqlSession.update("board.update", vo);
	}

	@Override
	public void delete(int bno) {
		sqlSession.delete("board.delete", bno);
	}

	@Override
	public List<BoardVO> listAll() {
		
		return sqlSession.selectList("board.listAll");
	}

	@Override
	public void increaseViewcnt(int bno) {
		sqlSession.update("board.increaseViewcnt", bno);
	}
	
}
