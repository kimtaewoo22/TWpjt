package com.taeou.test.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.taeou.test.model.BoardDomain;

@Mapper
public interface BoardMapper {	
	
	void addBoard(BoardDomain board);	
	
	List<Map>  listBoard();
}
