package com.example.project.model.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.model.dto.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("login.loginCheck", vo);
		//System.out.println(name);
		
		return (name == null) ? false : true; //�׿� �´� �̸��� ������ true
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		
		return sqlSession.selectOne("login.viewMember", vo);
	}

	@Override
	public void logout(HttpSession session) {
		
		
	}
	
}
