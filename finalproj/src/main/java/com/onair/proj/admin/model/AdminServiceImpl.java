package com.onair.proj.admin.model;

import org.springframework.stereotype.Service;

import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	
	private final AdminDAO adminDao;
	
	@Override
	public int adminInsert(AdminVO vo) {
		return adminDao.adminInsert(vo);
	}

	@Override
	public int totalMember(MemberVO vo) {
		return adminDao.totalMember(vo);
	}

	@Override
	public int totalboard3(VocVO vo) {
		return adminDao.totalboard3(vo);
	}
	
}
