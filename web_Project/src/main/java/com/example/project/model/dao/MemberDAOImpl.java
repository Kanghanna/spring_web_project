package com.example.project.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.example.project.model.dto.MemberVO;

@Repository //历厘家
public class MemberDAOImpl implements MemberDAO { //DB客 立辟窍绰 按眉

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public void insertMember(MemberVO vo) {

		sqlSession.insert("member.insertMember", vo);	
	}

	@Override
	public MemberVO viewMember(String userId) {
		
		return sqlSession.selectOne("member.viewMember", userId);
	}

	@Override
	public void updateMember(MemberVO vo) {
		
		sqlSession.update("member.updateMember", vo);
	}

	@Override
	public void deleteMember(String userId) {
		sqlSession.delete("member.deleteMember", userId);
	}
	
	public boolean checkPw(String userId, String userPw) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("userPw", userPw);
		int count = sqlSession.selectOne("member.checkPw", map);
		if(count==1) result = true;
		
		return result;
	}
	
}
