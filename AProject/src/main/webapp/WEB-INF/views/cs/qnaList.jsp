<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>고객센터>고객문의</title>
	
<script type="text/javascript">
function search(){

	$.ajax({
		dataType : 'json',
		async : false,
        url : "/cs/qnaListAjax.do",
        type : 'POST', 
        data : $("#fboard").serialize(), 
        success : function(data) {
        	var result = data.list;
        	$("#qnaList").empty();	//기존 목록 지우기
        	var str = '<tr>';
       		$.each(result , function(i){
       			str += '<td class="t_center">' + result[i].rownum 
	         		 + '</td><td class="t_left"><a href="/cs/qnaView.do?seq='+ result[i].seq +'">' + result[i].title             		 
	         		 + '</a></td><td class="t_center">' + result[i].writer
	         		 + '</td><td class="t_center">' + result[i].writeDate                   		 
	         		 + '</td><td class="t_center">' + result[i].hits 
	         		 + '</td><td class="t_center">' 
	         		 if($.trim(result[i].replyYn) == 'Y'){
	         	str += '	<span class="bd_icon1">답변완료</span>'
	         		 }
			  		 else if($.trim(result[i].replyYn) == 'N'){
			  	str +=  '	<span class="bd_icon2">답변대기</span>'
					 }
	         	str += '</td>'
	         	str += '</tr>';
            });
       		$("#qnaList").append(str); 
        }, 

        error : function(data) {
        }
    });
}

function goWrite(){
	$("#fboard").submit();
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
			<li>고객문의</li>
		</ul>
	</div>
	<div id="container">
		
		<div class="content_block">
			<div class="lnb_block" style="top: -767px;">
				<div class="scroll_action">
			        <a href="/cs/qnaList.do"><h2 class="tit_lnb_title">고객센터</h2></a>
					<ul class="lnb_nav">
						<li class="lnb_menu"><a href="/cs/noticeList.do">공지사항</a></li>
						<li class="lnb_menu"><a href="/cs/faqList.do">자주하는 질문</a></li>
						<li class="lnb_menu active"><a href="/cs/qnaList.do" class="">고객문의</a></li>
					</ul>
				</div>
			</div>
			
			<div class="content" id="content">
		
		    	<h3 class="tit_con_title">고객문의</h3>
		    	
		    	<form action="/cs/qnaWrite.do" method="post" name="fboard" id="fboard">
		    	<input type="hidden" id="mode" name="mode" value="W"/>
		    	
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
		    			<col width="10%"></col>
		    		</colgroup>
		    		<thead>
		    			<tr>
		    				<th>번호</th>
		    				<th>제목</th>
		    				<th>작성자</th>
		    				<th>작성일</th>
		    				<th>조회수</th>
		    				<th>답변여부</th>
		    			</tr>
		    		</thead>
		    		<tbody id="qnaList">
			    		<c:forEach var="list" items="${list}">
			    			<tr>
			    				<td class="t_center">${list.rownum}</td>
			    				<td class="t_left"><a href="/cs/qnaView.do?seq=${list.seq}">${list.title}</a></td>
			    				<td class="t_center">${list.writer}</td>
			    				<td class="t_center">${list.writeDate}</td>
			    				<td class="t_center">${list.hits}</td>
			    				<td class="t_center">
			    					<c:if test="${list.replyYn ne '' || list.replyYn ne null }">
				    					<c:if test="${list.replyYn eq 'Y'}">
				    						<span class="bd_icon1">답변완료</span>
				    					</c:if>
				    					<c:if test="${list.replyYn eq 'N'}">
				    						<span class="bd_icon2">답변대기</span>
				    					</c:if>
			    					</c:if>
			    				</td>
			    			</tr>
			    		</c:forEach>
		    		</tbody>
		    	</table>
		    	<div class="pull-right">
		    		<button type="button" class="btn btn-primary" onclick="goWrite()">작성</button>
		    	</div>
		    	
		    </div>
					
		</div>
	
	
	</div>
	
	
	
	<%@ include file="../layout/bottom.jsp"%>
</body>
</html>

