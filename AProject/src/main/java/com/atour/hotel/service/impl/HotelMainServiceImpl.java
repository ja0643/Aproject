package com.atour.hotel.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.atour.hotel.dao.HotelMainDAO;
import com.atour.hotel.service.HotelMainService;


@Service("hotelMainService")
public class HotelMainServiceImpl implements HotelMainService{
	
	@Resource(name="hotelMainDAO")
	private HotelMainDAO hotelMainDAO;

	@Override
	public List<Map<String, Object>> selectTestList(Map<String, Object> map) {
		return hotelMainDAO.selectTestList(map);
	}
	
}
