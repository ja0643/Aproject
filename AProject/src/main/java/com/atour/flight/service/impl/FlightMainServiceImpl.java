package com.atour.flight.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

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
	
}
