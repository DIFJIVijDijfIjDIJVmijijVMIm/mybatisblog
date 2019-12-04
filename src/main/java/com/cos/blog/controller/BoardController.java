package com.cos.blog.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.blog.model.Board;
import com.cos.blog.repository.BoardRepository;

@Controller
public class BoardController {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@GetMapping("/home")
	public String home(Model model) {
		List<Board> boards = boardRepository.findAll();
		model.addAttribute("boards", boards);
		// webapp/WEB-INF/views/post/list.jsp
		return "index";
	}
	
	@GetMapping("/writeForm")
	public String writeForm() {
		return "board/writeForm";
	}
	
	@PostMapping("/board/write")
	public String save(Board board) {	//id = 0, createDate = null, userId = 0
		System.out.println("/board/write 진입");
		try {
			boardRepository.save(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/home";
	}
	
	@GetMapping("/board/updateForm/{id}")
	public String updateForm(@PathVariable int id, Model model) {
		Optional<Board> board = boardRepository.findById(id);
		model.addAttribute("board", board.get());
		return "board/updateForm";
	}
}
