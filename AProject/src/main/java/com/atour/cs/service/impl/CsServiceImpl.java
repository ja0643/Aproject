package com.atour.cs.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.atour.common.vo.CommonVO;
import com.atour.cs.dao.CsDAO;
import com.atour.cs.service.CsService;
import com.atour.cs.vo.CsVO;
import com.atour.flight.dao.FlightMainDAO;
import com.atour.flight.service.FlightMainService;
import com.atour.paging.PagingUtil;


@Service("csService")
public class CsServiceImpl implements CsService{
	
	@Resource(name="csDAO")
	private CsDAO csDAO;

	@Override
	public Map<String, Object> selectNoticeList(CsVO csVO, Map param) throws Exception{
		
		
		Map<String, Object> result = new HashMap<String, Object>();
		List resultList = new ArrayList();
		
		int totalCnt = csDAO.selectNoticeListCount(csVO); //ÃÑ °¹¼ö
		
		int searchNo = 10;
		int searchCntPerPage = 10;
		int searchUnitPage = 10;
		
		if(totalCnt > 0) {
			PagingUtil.setPageInfo(param, 10);
			
			csVO.setFirst((Integer)param.get("first"));
			csVO.setLast((Integer)param.get("last"));
			
			resultList = csDAO.selectNoticeList(csVO);
			
//			System.out.println("result:::::::: "+resultList);
			result.put("result", resultList);
			result.put("page", PagingUtil.getPageObject(totalCnt, searchNo, searchCntPerPage, searchUnitPage));
			
		}else {
			result.put("result", resultList);
			result.put("page", PagingUtil.getPageObject(totalCnt, 0));
		}
		
		return result;
	}

	@Override
	public Map<String,Object> selectNoticeView(CsVO csVO) throws Exception {
		
		Map<String,Object> resultView = new HashMap<String,Object>();
		
		csDAO.updateHits(csVO);
		
		resultView = csDAO.selectNoticeView(csVO);
		
		return resultView;
	}

	@Override
	public Map<String, Object> selectFaqList(CsVO csVO, Map param) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		List resultList = new ArrayList();
		
		int totalCnt = csDAO.selectFaqListCount(csVO); //ÃÑ °¹¼ö
		
		int searchNo = 10;
		int searchCntPerPage = 10;
		int searchUnitPage = 10;
		
		if(totalCnt > 0) {
			PagingUtil.setPageInfo(param, 10);
			
			csVO.setFirst((Integer)param.get("first"));
			csVO.setLast((Integer)param.get("last"));
			
			resultList = csDAO.selectFaqList(csVO);
			
//			System.out.println("result:::::::: "+resultList);
			result.put("result", resultList);
			result.put("page", PagingUtil.getPageObject(totalCnt, searchNo, searchCntPerPage, searchUnitPage));
			
		}else {
			result.put("result", resultList);
			result.put("page", PagingUtil.getPageObject(totalCnt, 0));
		}
		
		return result;
		
	}

	@Override
	public Map<String, Object> selectQnaList(CsVO csVO, Map param) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		List resultList = new ArrayList();

		int totalCnt = csDAO.selectQnaListCount(csVO); //ÃÑ °¹¼ö

		int searchNo = 10;
		int searchCntPerPage = 10;
		int searchUnitPage = 10;
		
		if(totalCnt > 0) {
			PagingUtil.setPageInfo(param, 10);
			
			csVO.setFirst((Integer)param.get("first"));
			csVO.setLast((Integer)param.get("last"));
			
			resultList = csDAO.selectQnaList(csVO);
			
//			System.out.println("result:::::::: "+resultList);
			result.put("result", resultList);
			result.put("page", PagingUtil.getPageObject(totalCnt, searchNo, searchCntPerPage, searchUnitPage));
			
		}else {
			result.put("result", resultList);
			result.put("page", PagingUtil.getPageObject(totalCnt, 0));
		}
		
		return result;
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
	public int qnaInsert(CsVO csVO) {
		return csDAO.qnaInsert(csVO);
		
	}

	@Override
	public int qnaUpdate(CsVO csVO) {
		return csDAO.qnaUpdate(csVO);
	}

	@Override
	public int qnaDelete(CsVO csVO) {
		return csDAO.qnaDelete(csVO);
	}

}
