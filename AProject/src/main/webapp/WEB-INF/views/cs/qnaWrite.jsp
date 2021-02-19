<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>고객센터>공지사항</title>
	
<script type="text/javascript">
function goList(){
	location.href="/cs/qnaList.do";
}

function insert(){
	$.ajax({
		dataType : 'text',
		async : false,
        url : "/cs/qnaInsert.do",
        type : 'POST', 
        data : $("#fboard").serialize(), 
        success : function(result) {
        	alert(result);
        	goList();
        }, 

        error : function(result) {
        	alert(result);
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
			<li>공지사항</li>
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
				<form action="/cs/qnaInsert.do" method="post" name="fboard" id="fboard">
					<table class="table write">
						<colgroup>
							<col width="20%"/>
							<col width="*"/>
						</colgroup>
						<tbody>
							<tr>
								<th>제목</th>
								<td><input type="text" class="form-control" id="title" name="title" value=""/></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" class="form-control" id="writer" name="writer" value="" /></td>
							</tr>
							<tr style="height:150px;">
								<th>내용</th>
								<td><textarea name="contents" id="contents" cols="30" rows="10" class="form-control"></textarea></td>
							</tr>
						</tbody>
					</table>   
				</form>
				<div class="pull-right">
					<button type="button" class="btn btn-primary" onclick="insert()">작성</button>
					<button type="button" class="btn btn-dark" onclick="goList()">목록</button>
				</div>
		    	
		    </div>
					
		</div>
	
	
	</div>
	
	
	
	<%@ include file="../layout/bottom.jsp"%>
</body>
</html>

