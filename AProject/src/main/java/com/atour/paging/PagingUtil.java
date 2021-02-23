package com.atour.paging;

import java.util.HashMap;
import java.util.Map;

import com.atour.common.vo.CommonVO;

public class PagingUtil {

	private static final int countPerPage = 10; 	//페이지당 보여줄 데이터 갯수
	private static final int unitPage = 10;		//페이지 그룹 갯수
	
	/** 페이지 정보 셋팅 **/
	public static Map setPageInfo(Map param, int defaultCountPerPage) {

		int pageNo = Integer.parseInt(param.get("pageNo").toString());
		int countPerPage = Integer.parseInt(param.get("countPerPage").toString());
		
		countPerPage = countPerPage < 100 ? countPerPage : 100;
		
		int first = ((pageNo - 1) * countPerPage) + 1,
			last = first + countPerPage - 1;
		
		param.put("countPerPage", countPerPage);
		param.put("first", first);
		param.put("last", last);

//		System.out.println("setPageInfo :::::" + param);
		
		
		return param;
	}
	
	
	/** 페이징 처리 (파라미터 2개) **/
	public static Map getPageObject(int totalCount, int currentPageNo) { //totalCount : 총 갯수  currentPageNo : 현재 클릭한 페이지 번호
		return getPageObject(totalCount,currentPageNo, 10);
	}
	
	/** 페이징 처리 (파라미터 3개) **/
	public static Map getPageObject(int totalCount, int currentPageNo, int countPerPage) {
		return getPageObject(totalCount,currentPageNo, countPerPage, 10);
	}
	
	/** 페이징 처리 (파라미터 4개) **/
	public static Map getPageObject(int totalCount, int currentPageNo, int countPerPage, int unitPage) {//300 , 2, 10, 10
		
		int currPage = currentPageNo; //현재 클릭한 페이지 번호 2
		int unitCount = 100;
		
		boolean isFirst = false;
		
		if(totalCount == 0) {
			countPerPage = unitCount;
		}else if(totalCount < countPerPage) { //300<10
			countPerPage = totalCount / unitCount * unitCount; 
			
			if(totalCount % unitCount > 0) { 
				countPerPage += unitCount; 
			}
		}
		
		//max 페이지 구하기
		int totalPage = getMaxNum(totalCount, countPerPage); //30
		
		if(totalPage < currPage) { //30 <2
			currPage = totalPage;
		}
		
		int currStartCount;
		int currEndCount;
		
		if(currPage != 1) { //2 != 1
			currEndCount = currPage * countPerPage;	//2*10=20
			currStartCount = currEndCount - countPerPage; //20-10=10
		}else {
			currEndCount = countPerPage;
			currStartCount = 0;
		}
		
		if(currEndCount > totalCount){ // 20>30
			currEndCount = totalCount; 
		}
		
		int currStartPage;
		int currEndPage;
		
		if(totalPage <= unitPage) { //30<10
			currEndPage = totalPage;	
			currStartPage = 1;
		}else {
			currEndPage = (currPage - 1) / unitPage * unitPage + unitPage; //(2-1) / 10 * 10 + 10 = 10
			currStartPage = currEndPage - unitPage +1; // 10-10+1
		}
		
		//이전 페이지
		int prePage;
		boolean prePage_is;
		
		if(currStartPage != 1) {
			prePage_is = true;
			prePage = currStartPage - 1;
		}else {
			prePage_is = false;
			prePage = 0;
		}
		
		//다음 페이지
		int nextPage;
		boolean nextPage_is;
		
		if(currEndPage != totalPage) {
			nextPage_is = true; 
			nextPage = currEndPage + 1;
		}else {
			nextPage_is = false;
			nextPage = 0;
		}
		
		Map map = new HashMap();
		try {
			map.put("currPage", Integer.valueOf(currPage));
			map.put("unitPage", Integer.valueOf(unitPage));
			map.put("prePage", Integer.valueOf(prePage));
			map.put("prePage_is", Boolean.valueOf(prePage_is));
			map.put("nextPage", Integer.valueOf(nextPage));
			map.put("nextPage_is", Boolean.valueOf(nextPage_is));
			map.put("currStartPage", Integer.valueOf(currStartPage));
			map.put("totalCount", Integer.valueOf(totalCount));
			map.put("totalPage", Integer.valueOf(totalPage));
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return map;
	}

	/** max 페이지 구하기 **/
	private static int getMaxNum(int allPage, int list_num) {

		if(allPage % list_num == 0) { //30 % 10=0
			return allPage / list_num; //3
		}
		return allPage / list_num + 1;
	}
	
}
