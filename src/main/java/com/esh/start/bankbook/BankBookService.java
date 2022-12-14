package com.esh.start.bankbook;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.esh.start.util.CommentPager;

@Service
public class BankBookService {
	//BankBook Table에 insert
		
		@Autowired
		private BankBookCommentDAO bankBookCommentDAO;
		public int setComment(BankBookCommentDTO bankBookCommentDTO) throws Exception{
			
			return bankBookCommentDAO.setComment(bankBookCommentDTO);
		}
		
		public List<BankBookCommentDTO> getCommentList(CommentPager commentPager) throws Exception{
			commentPager.getRowNum();
			Long totalpage = bankBookCommentDAO.getCommentListTotalCount(commentPager);
			
			commentPager.makePage(totalpage);
			
			
			return bankBookCommentDAO.getCommentList(commentPager);
		}
		
		public int setCommentDelete(BankBookCommentDTO bankBookCommentDTO) throws Exception{
			
			
			return bankBookCommentDAO.setCommentDelete(bankBookCommentDTO);
		}
		
		public int setcommentUpdate(BankBookCommentDTO bankBookCommentDTO) throws Exception{
			
			
			return bankBookCommentDAO.setcommentUpdate(bankBookCommentDTO);
		}
	
	
	
		//----------------------------------------------comment
	
	
	
		@Autowired
		private BankBookDAO bankBookDAO;
		
		public int setBankBook(BankBookDTO bankBookDTO) throws Exception{
		
			return bankBookDAO.setBankBook(bankBookDTO);
		}

		//BankBook 모든 데이터를 조회
		//최신순으로
		public List<BankBookDTO> getList() throws Exception{
			
			return bankBookDAO.getList();
		}

		//Sale 컬럼 수정
		public int setChangeSale(BankBookDTO bankbookDTO) throws Exception{
			
			return bankBookDAO.setChangeSale(bankbookDTO);
		}
		
		// Booknum의 값으로 조회
		public BankBookDTO getDetail(BankBookDTO bankBookDTO) throws Exception{
			
			return bankBookDAO.getDetail(bankBookDTO);
		}
		   
		public int setUpdate(BankBookDTO bankBookDTO) throws Exception{
			
			return bankBookDAO.setUpdate(bankBookDTO);
		}
		
		public int setDelete(BankBookDTO bankBookDTO) throws Exception{
			
			return bankBookDAO.setDelete(bankBookDTO);
		}
}
