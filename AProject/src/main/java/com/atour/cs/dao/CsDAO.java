package com.atour.cs.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.atour.common.dao.AbstractDAO;
import com.atour.cs.vo.CsVO;

@Repository("csDAO")
public class CsDAO extends AbstractDAO{

	public List<Map<String, Object>> selectNoticeList(CsVO csVO) {
		return (List<Map<String, Object>>)selectList("cs.selectNoticeList", csVO);
	}

	public Map<String, Object> selectNoticeView(CsVO csVO) {
		return (Map<String, Object>) selectOne("cs.selectNoticeView", csVO);
	}

	public void updateHits(CsVO csVO) {
		update("cs.updateHits", csVO);
	}

	public List<Map<String, Object>> selectFaqList(CsVO csVO) {
		return (List<Map<String, Object>>)selectList("cs.selectFaqList", csVO);
	}

	public List<Map<String, Object>> selectQnaList(CsVO csVO) {
		return (List<Map<String, Object>>)selectList("cs.selectQnaList", csVO);
	}

	public Map<String, Object> selectQnaView(CsVO csVO) {
		return (Map<String, Object>) selectOne("cs.selectQnaView", csVO);
	}

	public Object selectQnaReplyView(CsVO csVO) {
		return (Map<String, Object>) selectOne("cs.selectQnaReplyView", csVO);
	}

	public int qnaInsert(CsVO csVO) {
		return (int) insert("cs.qnaInsert", csVO);
		
	}

	public int qnaUpdate(CsVO csVO) {
		return (int) insert("cs.qnaUpdate", csVO);
	}

	public int qnaDelete(CsVO csVO) {
		return (int) insert("cs.qnaDelete", csVO);
	}

	public int selectNoticeListCount(CsVO csVO) {
		return (int) selectOne("cs.selectNoticeListCount", csVO);
	}

	public int selectFaqListCount(CsVO csVO) {
		return (int) selectOne("cs.selectFaqListCount", csVO);
	}

	public int selectQnaListCount(CsVO csVO) {
		return (int) selectOne("cs.selectQnaListCount", csVO);
	}


}
