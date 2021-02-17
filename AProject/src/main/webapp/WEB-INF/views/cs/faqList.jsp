<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>고객센터>자주하는 질문</title>
	
<script type="text/javascript">
function search(){

	$.ajax({
		dataType : 'json',
		async : false,
        url : "/cs/noticeListAjax.do",
        type : 'POST', 
        data : $("#form").serialize(), 
        success : function(data) {
        	var result = data.list;
        	$("#noticeList").empty();	//기존 목록 지우기
        	var str = '<tr>';
       		$.each(result , function(i){
                   str += '<td class="t_center">' + result[i].rownum 
                  		 + '</td><td class="t_left">' + result[i].title
                  		 + '</td><td class="t_center">' + result[i].writer
                  		 + '</td><td class="t_center">' + result[i].writeDate 
                  		 + '</td><td class="t_center">' + result[i].hits + '</td>';
                   str += '</tr>';
            });
       		$("#noticeList").append(str); 
        }, 

        error : function(data) {
        	 console.log("error" + data);
        }
    });
}
</script>

</head>
<body>

<div class="tm-main-content" id="top">
	<%@ include file="../layout/top.jsp"%>
	<div class="page_navigation">
		<ul class="page_nav">
			<li><a href="/">홈</a></li>
			<li>고객센터</li>
			<li>자주하는 질문</li>
		</ul>
	</div>
	<div id="container">
		
		<div class="content_block">
			<div class="lnb_block" style="top: -767px;">
				<div class="scroll_action">
			        <a href="/cs/noticeList.do"><h2 class="tit_lnb_title">고객센터</h2></a>
					<ul class="lnb_nav">
						<li class="lnb_menu"><a href="/cs/noticeList.do">공지사항</a></li>
						<li class="lnb_menu active"><a href="/cs/faqList.do">자주하는 질문</a></li>
						<li class="lnb_menu"><a href="/cs/qnaList.do" class="">고객문의</a></li>
					</ul>
				</div>
			</div>
			
			<div class="content" id="content">
		
		    	<h3 class="tit_con_title">자주하는 질문</h3>
		    	
		    	<form action="/cs/noticeList.do" method="post" name="form" id="form">
		    	
		    	<div class="search pull-right">
		    		<select name="searchCondition" id="searchCondition" class="sch_select">
		    			<option value="all">전체</option>
		    			<option value="title">제목</option>
		    			<option value="contents">내용</option>
		    		</select>
	    			<input type="text" class="form-control-sm" placeholder="검색어를 입력하세요" name="searchWrd" id="searchWrd" title="검색어" value="">
		    		<button type="button" class="btn btn-dark sch_btn" onclick="search();">검색</button>
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
			    				<td class="t_left">${list.title}</td>
			    				<td class="t_center">${list.writer}</td>
			    				<td class="t_center">${list.writeDate}</td>
			    				<td class="t_center">${list.hits}</td>
			    			</tr>
			    		</c:forEach>
		    		</tbody>
		    	</table>
		    </div>
					
		</div>
	
	
	</div>
	
	
	
	<%@ include file="../layout/bottom.jsp"%>
</body>
</html>

