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
	
	//1. 게시글의 목록 보기
	@RequestMapping("/board/list.do")
	public ModelAndView list() {
		
		List<BoardVO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list"); //이 문서를 어떤 jsp파일에 뿌려줄지 설정
		mav.addObject("list", list); //list에 넘길 값을 담아서 보냄
		
		return mav;
	}
	
	
	//2. 게시글 상세 보기 -> 보기 + 조회수 증가
	@RequestMapping("/board/view.do")
	public ModelAndView view(@RequestParam int bno, HttpSession session) {
		
		boardService.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto", boardService.read(bno));
		
		return mav;
	}
	
	//3. 게시글 작성 화면
	@RequestMapping("board/write.do")
	public String write() {
		return "board/write";
	}
	
	//4. 게시글 수정하기
	@RequestMapping("/board/update.do")
	public String update(@ModelAttribute BoardVO vo) {
		
		boardService.update(vo);
		return "redirect:/board/list.do";
	}
	
	
	//5. 게시글 삭제하기
	@RequestMapping("/board/delete.do")
	public String delete(int bno) {
		
		boardService.delete(bno);
		return "redirect:/board/list.do";
	}
	
	//6. 게시글 작성한 것 처리하기
	@RequestMapping("/board/insert.do")
	public String insert(BoardVO vo) {
		boardService.create(vo);
		return "redirect:/board/list.do";
	}

}
