package com.atour.cs.service;

import java.util.List;
import java.util.Map;

import com.atour.cs.vo.CsVO;

public interface CsService {

	List<Map<String, Object>> selectNoticeList(CsVO csVO) throws Exception;

	Map<String, Object> selectNoticeView(CsVO csVO) throws Exception;

	void updateNoticeHits(CsVO csVO) throws Exception;


}
