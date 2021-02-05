package com.atour.main.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.atour.common.dao.AbstractDAO;

@Repository("mainDAO")
public class MainDAO extends AbstractDAO{

	public List<Map<String, Object>> selectTestList(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("sample.selectTestList", map);
	}

}
