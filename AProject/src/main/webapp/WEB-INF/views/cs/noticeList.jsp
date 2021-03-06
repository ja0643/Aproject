<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>고객센터>공지사항</title>
	
</head>
<body>

<div class="tm-main-content" id="top">
	<%@ include file="../layout/top.jsp"%>
	<div class="page_navigation">
		<ul class="page_nav">
			<li><a href="/">홈</a></li>
			<li>고객센터</li>
			<li>공지사항</li>
		</ul>
	</div>
	<div id="container">
		
		<div class="content_block">
			<div class="lnb_block" style="top: -767px;">
				<div class="scroll_action">
			        <a href="/cs/noticeList.do"><h2 class="tit_lnb_title">고객센터</h2></a>
					<ul class="lnb_nav">
						<li class="lnb_menu active"><a href="/cs/noticeList.do">공지사항</a></li>
						<li class="lnb_menu"><a href="/cs/faqList.do">자주하는 질문</a></li>
						<li class="lnb_menu"><a href="/cs/qnaList.do" class="">고객문의</a></li>
					</ul>
				</div>
			</div>
			
			<div class="content" id="content">
		
		    	<h3 class="tit_con_title">공지사항</h3>
		    	
		    	<form action="/cs/noticeList.do" method="post" name="fboard" id="fboard">
		    	
		    	<input type="hidden" id="pageNo" name="pageNo" value=""/>
		    	<input type="hidden" id="countPerPage" name="countPerPage" value="10"/>
		    	<input type="hidden" id="totalCnt" name="totalCnt" value="${totalCnt}"/>
		    	
		    	<div class="search pull-right">
		    		<select name="searchCondition" id="searchCondition" class="sch_select">
		    			<option value="all">전체</option>
		    			<option value="title">제목</option>
		    			<option value="contents">내용</option>
		    		</select>
	    			<input type="text" class="form-control-sm" placeholder="검색어를 입력하세요" name="searchWrd" id="searchWrd" title="검색어" value="">
		    		<button type="button" class="btn btn-dark sch_btn" onclick="goPaging_boardList('1');">검색</button>
		    	</div>
		    	
		    	</form>
		    	
		    	<table class="table table-hover">
		    		<colgroup>
		    			<col width="8%"></col>
		    			<col width="*"></col>
		    			<col width="10%"></col>
		    			<col width="14%"></col>
		    			<col width="8%"></col>
		    		</colgroup>
		    		<thead>
		    			<tr>
		    				<th>번호</th>
		    				<th>제목</th>
		    				<th>작성자</th>
		    				<th>작성일</th>
		    				<th>조회수</th>
		    			</tr>
		    		</thead>
		    		<tbody id="noticeList">
			    		<c:forEach var="list" items="${list}">
			    			<tr>
			    				<td class="t_center">${list.rownum}</td>
			    				<td class="t_left"><a href="/cs/noticeView.do?seq=${list.seq}">${list.title}</a></td>
			    				<td class="t_center">${list.writer}</td>
			    				<td class="t_center">${list.writeDate}</td>
			    				<td class="t_center">${list.hits}</td>
			    			</tr>
			    		</c:forEach>
		    		</tbody>
		    	</table>
		    	
		    	<div id="paging"></div>
		    	
		    </div>
					
		</div>
	
	
	</div>
	
	<%@ include file="../layout/bottom.jsp"%>
	
<script type="text/javascript">
$(document).ready(function(){
	
	goPaging_boardList(1);
	
});


function goPaging_boardList(no){

	var pageNo = (no || 1);
	$("#pageNo").val(pageNo);
	
	$.ajax({
		dataType : 'json',
		async : false,
        url : "/cs/noticeListAjax.do",
        type : 'POST', 
        data : $("#fboard").serialize(), 
        success : function(data) {
        	var result = data.list;
        	
        	var page = data.page;	//페이징 변수
        	var page_viewList = Paging(page.totalCount, 10, 10 , pageNo, "boardList");
        	
        	$("#noticeList").empty();	//기존 목록 지우기
        	var str = '<tr>';
       		$.each(result , function(i){
                   str += '<td class="t_center">' + result[i].rownum 
                  		 + '</td><td class="t_left"><a href="/cs/noticeView.do?seq='+ result[i].seq +'">' + result[i].title
                  		 + '</a></td><td class="t_center">' + result[i].writer
                  		 + '</td><td class="t_center">' + result[i].writeDate 
                  		 + '</td><td class="t_center">' + result[i].hits + '</td>';
                   str += '</tr>';
            });
       		$("#noticeList").append(str); 
       		
       		$("#paging").empty().html(page_viewList);	//페이징 그리기
        }, 

        error : function(data) {
        }
    });
}


</script>
</body>
</html>

