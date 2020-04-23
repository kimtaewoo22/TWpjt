package com.taeou.test.service.test;

import java.util.List;
import java.util.Map;

import com.taeou.test.model.BoardDomain;


public interface BoardService {
	
	public List<Map>listBoard();
	
	public void addBoard(BoardDomain board) ;
	
	public void deleteBoard(String bno);
	
	public void updateBoard(BoardDomain board);
	
}
