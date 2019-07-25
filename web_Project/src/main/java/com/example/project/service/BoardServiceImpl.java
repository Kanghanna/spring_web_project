package com.example.project.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.project.model.dao.BoardDAOImpl;
import com.example.project.model.dto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAOImpl BoardDao;
	
	@Override
	public void create(BoardVO vo) {
		
		BoardDao.create(vo);
	}

	@Override
	public BoardVO read(int bno) {

		return BoardDao.read(bno);
	}

	@Override
	public void update(BoardVO vo) {
		
		BoardDao.update(vo);
	}

	@Override
	public void delete(int bno) {
		
		BoardDao.delete(bno);
	}

	@Override
	public List<BoardVO> listAll() {

		return BoardDao.listAll();
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) {
		
		BoardDao.increaseViewcnt(bno); //조회수 증가
//		long update_time = 0; //시간적 개념으로 크게 잡기 위해 long 사용
//		
//		long current_time = System.currentTimeMillis();
//		if(current_time - update_time > 5*1000) { //게시글을 본 시간이 5초 이상 지났을 때
//			System.out.println("current_time " + current_time);
//			System.out.println("update_time " + update_time);
//			BoardDao.increaseViewcnt(bno); //조회수 증가
//		}
	}
	
}
