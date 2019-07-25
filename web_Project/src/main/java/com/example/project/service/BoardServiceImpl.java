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
		
		BoardDao.increaseViewcnt(bno); //��ȸ�� ����
//		long update_time = 0; //�ð��� �������� ũ�� ��� ���� long ���
//		
//		long current_time = System.currentTimeMillis();
//		if(current_time - update_time > 5*1000) { //�Խñ��� �� �ð��� 5�� �̻� ������ ��
//			System.out.println("current_time " + current_time);
//			System.out.println("update_time " + update_time);
//			BoardDao.increaseViewcnt(bno); //��ȸ�� ����
//		}
	}
	
}
