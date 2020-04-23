package com.taeou.test.service.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taeou.test.dao.BoardMapper;
import com.taeou.test.model.BoardDomain;


@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public void addBoard(BoardDomain board) {
		boardMapper.addBoard(board);

	}

	@Override
	public void deleteBoard(String bno) {
		boardMapper.deleteBoard(bno);

	}

	@Override
	public void updateBoard(BoardDomain board) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Map> listBoard() {
		List<Map> list =boardMapper.listBoard();
		 
		return list;
	}

}
