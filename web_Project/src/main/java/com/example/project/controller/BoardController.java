package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.model.dto.BoardVO;
import com.example.project.service.BoardServiceImpl;

@Controller
public class BoardController {
	
	@Inject
	BoardServiceImpl boardService;
	
	//1. �Խñ��� ��� ����
	@RequestMapping("/board/list.do")
	public ModelAndView list() {
		
		List<BoardVO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list"); //�� ������ � jsp���Ͽ� �ѷ����� ����
		mav.addObject("list", list); //list�� �ѱ� ���� ��Ƽ� ����
		
		return mav;
	}
	
	
	//2. �Խñ� �� ���� -> ���� + ��ȸ�� ����
	@RequestMapping("/board/view.do")
	public ModelAndView view(@RequestParam int bno, HttpSession session) {
		
		boardService.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto", boardService.read(bno));
		
		return mav;
	}
	
	//3. �Խñ� �ۼ� ȭ��
	@RequestMapping("board/write.do")
	public String write() {
		return "board/write";
	}
	
	//4. �Խñ� �����ϱ�
	@RequestMapping("/board/update.do")
	public String update(@ModelAttribute BoardVO vo) {
		
		boardService.update(vo);
		return "redirect:/board/list.do";
	}
	
	
	//5. �Խñ� �����ϱ�
	@RequestMapping("/board/delete.do")
	public String delete(int bno) {
		
		boardService.delete(bno);
		return "redirect:/board/list.do";
	}
	
	//6. �Խñ� �ۼ��� �� ó���ϱ�
	@RequestMapping("/board/insert.do")
	public String insert(BoardVO vo) {
		boardService.create(vo);
		return "redirect:/board/list.do";
	}

}
