package com.cos.blog.repository;

import java.util.List;
import java.util.Optional;

import com.cos.blog.model.User;

public interface UserRepository {
	void save(User user);	//회원정보 입력
	List<User> findAll();	//전체보기
	void update(User user);	//수정하기
	Optional<User> findById(int id);	//상세보기
	void delete(int id);	//삭제하기
	User findByUsernameAndPassword(User user);	//로그인하기
}
