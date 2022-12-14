package com.esh.start.member;

import java.util.ArrayList;
import java.util.List;

import com.esh.start.bankbook.BankBookDTO;

public interface MembersDAO {

	   //bankmembers 회원가입
	   public int setJoin(BankMembersDTO bankMembersDTO) throws Exception;
	   
	   //검색어를 입력해서 ID를 찾기 
	   public List<BankMembersDTO> getSearchByID(String search) throws Exception;
	   
	   public BankMembersDTO getLogin(BankMembersDTO bankMembersDTO) throws Exception;

	   
	   
}