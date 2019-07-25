package com.example.project.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.project.model.dao.LoginDAOImpl;
import com.example.project.model.dto.MemberVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Inject
	LoginDAOImpl loginDao;
	
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = loginDao.loginCheck(vo);
		//System.out.println(result);
		
		if(result) { //true면 실행
			MemberVO vo2 = viewMember(vo); //전체 정보를 가져오는 메소드 실행해서 vo2에 넣기
			
			System.out.println(vo2.getUserName());
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("userName", vo2.getUserName());
			
		}
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		
		return loginDao.viewMember(vo); //전체 정보를 가져와 리턴함
	}

	@Override
	public void logout(HttpSession session) {
		
		
	}
	
}
