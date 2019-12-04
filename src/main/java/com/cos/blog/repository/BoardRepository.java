package com.cos.blog.repository;

import java.util.List;
import java.util.Optional;

import com.cos.blog.model.Board;

public interface BoardRepository {
	List<Board> findAll();	//전체보기
	void save(Board board);	//글쓰기
	void update(Board board);	//수정하기
	Optional<Board> findById(int id);	//상세보기
	void delete(int id);	//삭제하기
}
