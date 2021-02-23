package com.atour.cs.service;

import java.util.List;
import java.util.Map;

import com.atour.cs.vo.CsVO;

public interface CsService {

	Map<String, Object> selectNoticeList(CsVO csVO, Map<String, Object> param) throws Exception;

	Map<String, Object> selectNoticeView(CsVO csVO) throws Exception;

	Map<String, Object> selectFaqList(CsVO csVO, Map<String, Object> param);

	Map<String, Object> selectQnaList(CsVO csVO, Map<String, Object> param);

	Map<String, Object> selectQnaView(CsVO csVO);

	int qnaInsert(CsVO csVO);

	int qnaUpdate(CsVO csVO);

	int qnaDelete(CsVO csVO);

}
