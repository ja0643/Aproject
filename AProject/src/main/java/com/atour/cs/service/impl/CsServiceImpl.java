package com.atour.cs.service.impl;

import java.util.HashMap;
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

	@Override
	public Map<String,Object> selectNoticeView(CsVO csVO) throws Exception {
		
		Map<String,Object> resultView = new HashMap<String,Object>();
		
		csDAO.updateHits(csVO);
		
		resultView = csDAO.selectNoticeView(csVO);
		
		return resultView;
	}

	@Override
	public List<Map<String, Object>> selectFaqList(CsVO csVO) {
		return csDAO.selectFaqList(csVO);
	}

	@Override
	public List<Map<String, Object>> selectQnaList(CsVO csVO) {
		return csDAO.selectQnaList(csVO);
	}

	@Override
	public Map<String, Object> selectQnaView(CsVO csVO) {

		Map<String,Object> resultView = new HashMap<String,Object>();
		
		csDAO.updateHits(csVO);
		
		resultView.put("resultList", csDAO.selectQnaView(csVO));
		resultView.put("resultReply", csDAO.selectQnaReplyView(csVO));
		
		return resultView;
	}

	@Override
	public void qnaInsert(CsVO csVO) {
		csDAO.qnaInsert(csVO);
		
	}

}
