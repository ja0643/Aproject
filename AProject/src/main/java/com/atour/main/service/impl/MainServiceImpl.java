package com.atour.main.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.atour.main.dao.MainDAO;
import com.atour.main.service.MainService;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	@Resource(name="mainDAO")
	private MainDAO mainDAO;

	@Override
	public List<Map<String, Object>> selectTestList(Map<String, Object> map) {
		return mainDAO.selectTestList(map);
	}
	
}
