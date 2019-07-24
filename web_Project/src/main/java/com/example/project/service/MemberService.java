package com.example.project.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.project.model.dto.MemberVO;

@Service
public interface MemberService {
	//1. ȸ�� ��� ����
	public List<MemberVO> memberList();
	
	//2. ȸ�� �Է��ϱ�
	public void insertMember(MemberVO vo);
	
	//3. ȸ������ �󼼺���
	public MemberVO viewMember(String userId);
	
	//4. ȸ�� ���� �����ϱ�
	public void updateMember(MemberVO vo);
	
	//5. ȸ�� ���� �����ϱ�
	public void deleteMember(String userId);
	
	//6. ��й�ȣ Ȯ�� ����
	public boolean checkPw(String userId, String userPw);
}
