package com.esh.start.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.esh.start.board.impl.BoardDTO;

@Controller
@RequestMapping(value = "/qna/*")
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@RequestMapping(value = "list.esh", method = RequestMethod.GET)
	public ModelAndView list(Model model) throws Exception{
		System.out.println("list GET");
		ModelAndView mv = new ModelAndView();
//		List<BoardDTO> ar = qnaService.getList();
		
//		model.addAttribute("list", ar);

		mv.addObject("board", "Qna");
		mv.setViewName("board/list");
		
		return mv;
	}
	
	@RequestMapping(value = "detail.esh", method = RequestMethod.GET)
	public ModelAndView detail(BoardDTO boardDTO) throws Exception{
		System.out.println("detail GET");
		
		System.out.println(boardDTO.getNum());
		ModelAndView mv = new ModelAndView();
		boardDTO = qnaService.getDetail(boardDTO);
		
		mv.setViewName("board/detail");
		mv.addObject("board", "Qna");
		mv.addObject("detail", boardDTO);

		return mv;
	}
	
	@RequestMapping(value = "add.esh", method = RequestMethod.GET)
	public ModelAndView add() throws Exception{
		System.out.println("detail GET");
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", "Qna");
		mv.setViewName("board/add");
		return mv;
	}
	
	@RequestMapping(value = "add.esh", method = RequestMethod.POST)
	public ModelAndView add(BoardDTO boardDTO) throws Exception{
		System.out.println("detail POST");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./list.esh");
		
		int result =qnaService.setadd(boardDTO);
		
		if(result>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "delete.esh", method = RequestMethod.GET)
	public ModelAndView delete(BoardDTO boardDTO) throws Exception{
		System.out.println("delete GET");
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setDelete(boardDTO);
		mv.setViewName("redirect:./list.esh");
		
		
		if(result>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		
		
		return mv;
	}
	
	@RequestMapping(value = "update.esh", method = RequestMethod.GET)
	public ModelAndView update(BoardDTO boardDTO, Model model) throws Exception{
		System.out.println("UPDATE GET");
		
		ModelAndView mv = new ModelAndView();
		boardDTO = qnaService.getDetail(boardDTO);
		model.addAttribute("update", boardDTO);
		mv.addObject("board", "Qna");
		mv.setViewName("board/update");
		
		return mv;
	}
	
	@RequestMapping(value = "update.esh", method = RequestMethod.POST)
	public ModelAndView update(BoardDTO boardDTO) throws Exception{
		System.out.println("UPDATE GET");
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setUpdate(boardDTO);
		
		
		mv.setViewName("redirect:./detail.esh?num="+boardDTO.getNum());
		
		
		if(result>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		
		return mv;
		
	}
}