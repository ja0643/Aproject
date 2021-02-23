package com.atour.cs.vo;

import com.atour.common.vo.CommonVO;

public class CsVO extends CommonVO{
	
	private Integer rownum;
	private Integer seq;
	private Integer parentSeq;
	private String category;
	private String title;
	private String contents;
	private String writer;
	private String writeDate;
	private Integer hits;
	private String replyYn;
	private String delYn;
	
	/* °Ë»ö */
	private String searchCondition;
	private String searchWrd;
	
	public Integer getRownum() {
		return rownum;
	}
	public void setRownum(Integer rownum) {
		this.rownum = rownum;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getParentSeq() {
		return parentSeq;
	}
	public void setParentSeq(Integer parentSeq) {
		this.parentSeq = parentSeq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public Integer getHits() {
		return hits;
	}
	public void setHits(Integer hits) {
		this.hits = hits;
	}
	public String getReplyYn() {
		return replyYn;
	}
	public void setReplyYn(String replyYn) {
		this.replyYn = replyYn;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchWrd() {
		return searchWrd;
	}
	public void setSearchWrd(String searchWrd) {
		this.searchWrd = searchWrd;
	}
	
	
	
}
