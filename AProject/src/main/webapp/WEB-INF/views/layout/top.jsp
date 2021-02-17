<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- load stylesheets -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">  <!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="/resources/font-awesome-4.7.0/css/font-awesome.min.css">                <!-- Font Awesome -->
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
<link rel="stylesheet" type="text/css" href="/resources/css/datepicker.css"/>
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="/resources/slick/slick-theme.css"/>
<link rel="stylesheet" href="/resources/css/templatemo-style.css"> 


<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/main.css" />

<!-- load JS files -->
<script src="/resources/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
<script src="/resources/js/popper.min.js"></script>                    <!-- https://popper.js.org/ -->       
<script src="/resources/js/bootstrap.min.js"></script>                 <!-- https://getbootstrap.com/ -->
<script src="/resources/js/datepicker.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
<script src="/resources/js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
<script src="/resources/slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->
<script src="/resources/js/jquery.scrollTo.min.js"></script>           <!-- https://github.com/flesler/jquery.scrollTo -->
<%

String url = request.getContextPath();

%>
<script type="text/javascript">
$(document).ready(function(){
	
});

function goMenu(url){
	
	if(url == '' || url == null){
		alert("준비중입니다.");
	}else{
		location.href= url;
	}
	
}

</script>

<div class="tm-top-bar-bg"></div>    
    <div class="tm-top-bar" id="tm-top-bar">
    	<div class="top_block">
			<div class="header_block">
				<div class="top_block">
					<ul class="top_nav">
						<li><a onclick="goMenu('/login/login.do');" href="javascript:void(0);">로그인</a></li>
						<li><a onclick="goMenu('/join/join.do');" href="javascript:void(0);">회원가입</a></li>
						<li><a onclick="goMenu('');" href="javascript:void(0);">예약/확인결제</a></li>
					</ul>
				</div>
			</div>
		</div>
		
        <div class="container">
            <div class="row">
                <nav class="navbar navbar-expand-lg narbar-light">
                    <a class="navbar-brand mr-auto" onclick="goMenu('/flight/main.do');">
                        <img src="/resources/img/logo/logo.png" alt="Site logo">
                    </a>
                    <button type="button" id="nav-toggle" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#mainNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div id="mainNav" class="collapse navbar-collapse tm-bg-white">
                        <ul class="navbar-nav ml-auto">
                          <li class="nav-item">
                            <a class="nav-link" onclick="goMenu('/flight/main.do');" href="javascript:void(0);">항공</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="goMenu('/hotel/main.do');" href="javascript:void(0);">호텔</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="goMenu('');" href="javascript:void(0);">투어+액티비티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="goMenu('');" href="javascript:void(0);">렌터카</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <c:if test='${menuId eq "cs"}'>active</c:if>" onclick="goMenu('/cs/noticeList.do');" href="javascript:void(0);">고객센터</a>
                        </li>
                    </ul>
                </div>                            
            </nav>
        </div> <!-- row -->
    </div> <!-- container -->
</div> <!-- .tm-top-bar -->

