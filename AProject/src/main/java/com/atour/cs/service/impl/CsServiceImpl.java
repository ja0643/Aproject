package com.atour.cs.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.atour.cs.dao.CsDAO;
import com.atour.cs.service.CsService;
import com.atour.cs.vo.CsVO;
import com.atour.flight.dao.FlightMainDAO;
import com.atour.flight.service.FlightMainService;


@Service("csService")
public class CsServiceImpl implements CsService{
	
	@Resource(name="csDAO")
	private CsDAO csDAO;

	@Override
	public List<Map<String, Object>> selectNoticeList(CsVO csVO) throws Exception{
		return csDAO.selectNoticeList(csVO);
	}
	
}
