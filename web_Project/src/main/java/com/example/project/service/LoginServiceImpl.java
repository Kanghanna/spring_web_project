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
		
		if(result) { //true�� ����
			MemberVO vo2 = viewMember(vo); //��ü ������ �������� �޼ҵ� �����ؼ� vo2�� �ֱ�
			
			System.out.println(vo2.getUserName());
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("userName", vo2.getUserName());
			
		}
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		
		return loginDao.viewMember(vo); //��ü ������ ������ ������
	}

	@Override
	public void logout(HttpSession session) {
		
		
	}
	
}
