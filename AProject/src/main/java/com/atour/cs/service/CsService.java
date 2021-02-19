package com.atour.cs.service;

import java.util.List;
import java.util.Map;

import com.atour.cs.vo.CsVO;

public interface CsService {

	List<Map<String, Object>> selectNoticeList(CsVO csVO) throws Exception;

	Map<String, Object> selectNoticeView(CsVO csVO) throws Exception;

	List<Map<String, Object>> selectFaqList(CsVO csVO);

	List<Map<String, Object>> selectQnaList(CsVO csVO);

	Map<String, Object> selectQnaView(CsVO csVO);

	int qnaInsert(CsVO csVO);

	int qnaUpdate(CsVO csVO);

	int qnaDelete(CsVO csVO);

}
