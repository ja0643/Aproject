package com.atour.flight.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.atour.api.ApiExplorer;
import com.atour.flight.dao.FlightMainDAO;
import com.atour.flight.service.FlightMainService;


@Service("flightMainService")
public class FlightMainServiceImpl implements FlightMainService{
	
	@Resource(name="flightMainDAO")
	private FlightMainDAO flightMainDAO;

	@Override
	public List<Map<String, Object>> selectTestList(Map<String, Object> map) {
		return flightMainDAO.selectTestList(map);
	}

	@Override
	public Map<String, Object> flightList() throws Exception {

		Map<String, Object> result = new HashMap<String, Object>();
		Map<String, Object> list = new HashMap<String, Object>();
		
		
		list = ApiExplorer.ArprtApi();
//		Map<String, Object> list111 = ApiExplorer.FlightOpratInfoApi();
		
		result.put("list", list.get("data"));
		
		return result;
	}
	
}
