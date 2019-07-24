package com.example.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.example.project.model.dao.MemberDAOImpl;
import com.example.project.model.dto.MemberVO;

@Repository
public class MemberServiceImpl implements MemberService { //DAO�� �ϰ� �����

	@Inject //����
	MemberDAOImpl memberDao;
	
	@Override
	public List<MemberVO> memberList() {
	
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		
		memberDao.insertMember(vo);
	}

	@Override
	public MemberVO viewMember(String userId) {
		
		return memberDao.viewMember(userId);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDao.updateMember(vo);
	}

	@Override
	public void deleteMember(String userId) {
		memberDao.deleteMember(userId);
		
	}
	
	public boolean checkPw(String userId, String userPw) {
		return memberDao.checkPw(userId, userPw);
	}

}
