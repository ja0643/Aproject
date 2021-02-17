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

	public void updateNoticeHits(CsVO csVO) {
		update("cs.updateNoticeHits", csVO);
		
	}

}
