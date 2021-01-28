package com.aproject.sample.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.aproject.common.dao.AbstractDAO;

@Repository("sampleDAO")
public class sampleDAO extends AbstractDAO{

	public List<Map<String, Object>> selectTestList(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("sample.selectTestList", map);
	}

}
