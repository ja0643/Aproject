<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>ATour</title>
</head>
<body>
<div class="tm-main-content" id="top">
	<%@ include file="../layout/top.jsp"%>
	
	<div class="tm-page-wrap mx-auto">
		
		<section class="tm-banner">
		    <div class="tm-container-outer tm-banner-bg">
		        <div class="container">
		
		            <div class="row tm-banner-row tm-banner-row-header">
		                <div class="col-xs-12">
		                    <div class="tm-banner-header">
		                        <h1 class="text-uppercase tm-banner-title">국내여행의 모든 것, ATOUR에서</h1>
		                        <img src="/resources/img/dots-3.png" alt="Dots">
		                        <p class="tm-banner-subtitle">항공,호텔,액티비티,렌터카까지 합리적인 가격으로 예약하세요!</p>
		                        <a href="javascript:void(0)" class="tm-down-arrow-link"><i class="fa fa-2x fa-angle-down tm-down-arrow"></i></a>       
		                    </div>    
		                </div>  <!-- col-xs-12 -->                      
		            </div> <!-- row -->
		            <div class="row tm-banner-row" id="tm-section-search">
		
		                <form action="index.html" method="get" class="tm-search-form tm-section-pad-2">
		                    <div class="form-row tm-search-form-row">                                
		                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
		                        <label for="inputCity" class="tit">여행지</label>
		                        	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-1"> 
			                            <input name="start_place" type="text" class="form-control" id="start_place" placeholder="출발지">
		                            </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-2"> 
		                             ~ 
		                             </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-1"> 
		                           	 <input name="end_place" type="text" class="form-control" id="end_place" placeholder="도착지">
		                            </div>
		                        </div>
		                        <div class="form-group tm-form-group tm-form-group-1">                                    
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">                                       
		                                <label for="inputAdult">성인</label>     
		                                <select name="adult" class="form-control tm-select" id="inputAdult">
		                                    <option value="1" selected>1</option>
		                                    <option value="2">2</option>
		                                    <option value="3">3</option>
		                                    <option value="4">4</option>
		                                    <option value="5">5</option>
		                                    <option value="6">6</option>
		                                    <option value="7">7</option>
		                                    <option value="8">8</option>
		                                    <option value="9">9</option>
		                                </select>                                        
		                            </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
		
		                                <label for="inputChildren">소아</label>                                            
		                                <select name="children" class="form-control tm-select" id="inputChildren">
		                                	<option value="0" selected>0</option>
		                                    <option value="1">1</option>
		                                    <option value="2">2</option>
		                                    <option value="3">3</option>
		                                    <option value="4">4</option>
		                                    <option value="5">5</option>
		                                    <option value="6">6</option>
		                                    <option value="7">7</option>
		                                    <option value="8">8</option>
		                                    <option value="9">9</option>
		                                </select>                                        
		                            </div>
		                            
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
		                                <label for="inputRoom">좌석등급</label>
		                                <select name="rank" class="form-control tm-select" id="rank">
		                                    <option value="1" selected>일반석</option>
		                                </select>                                        
		                            </div>
		                        </div>
		                    </div> <!-- form-row -->
		                    <div class="form-row tm-search-form-row">
								
		                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
		                        	<label for="inputCheckIn" class="tit">여행일정</label>
		                        	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-1"> 
			                           <input name="start_date" type="text" class="form-control" id="start_date" placeholder="날짜선택">
		                            </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-2"> 
		                            	~ 
		                            </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-1"> 
		                            <input name="end_date" type="text" class="form-control" id="end_date" placeholder="날짜선택">
		                            </div>
		                        </div>
<!-- 		                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3"> -->
<!-- 		                            <label for="inputCheckOut">Check Out Date</label> -->
		                            
<!-- 		                        </div> -->
		                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
		                            <label for="btnSubmit">&nbsp;</label>
		                            <button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="btnSubmit">항공권 검색</button>
		                        </div>
		                    </div>                              
		                </form>                             
		
		            </div> <!-- row -->
		            <div class="tm-banner-overlay"></div>
		        </div>  <!-- .container -->                   
		    </div>     <!-- .tm-container-outer -->                 
		</section>
		
		<section class="p-5 tm-container-outer tm-bg-gray">            
		    <div class="container">
		        <div class="row">
		            <div class="col-xs-12 mx-auto tm-about-text-wrap text-center">                        
		                <h2 class="text-uppercase mb-4">당신의 <strong>여행이</strong> 우리의 최우선 과제입니다</h2>
		                <p class="mb-4">Nullam auctor, sapien sit amet lacinia euismod, lorem magna lobortis massa, in tincidunt mi metus quis lectus. Duis nec lobortis velit. Vivamus id magna vulputate, tempor ante eget, tempus augue. Maecenas ultricies neque magna.</p>
		                <a href="#" class="text-uppercase btn-primary tm-btn">Continue explore</a>                              
		            </div>
		        </div>
		    </div>            
		</section>
		
		<div class="tm-container-outer" id="tm-section-2">
		    <section class="tm-slideshow-section">
		        <div class="tm-slideshow">
		            <img src="/resources/img/tm-img-01.jpg" alt="Image">
		            <img src="/resources/img/tm-img-02.jpg" alt="Image">
		            <img src="/resources/img/tm-img-03.jpg" alt="Image">    
		        </div>
		        <div class="tm-slideshow-description tm-bg-primary">
		            <h2 class="">제주도</h2>
		            <div class="margin10">
			            <p>2021년 새해</p>
			            <p>겨울 속에 새로운 안식을 찾다</p>
			            <p>뻔하지 않은 제주 여행의 모든 것</p>
		            </div>
		            <a href="#" class="text-uppercase tm-btn tm-btn-white tm-btn-white-primary">예약하기</a>
		        </div>
		    </section>
		    <section class="clearfix tm-slideshow-section tm-slideshow-section-reverse">
		
		        <div class="tm-right tm-slideshow tm-slideshow-highlight">
		            <img src="/resources/img/tm-img-02.jpg" alt="Image">
		            <img src="/resources/img/tm-img-03.jpg" alt="Image">
		            <img src="/resources/img/tm-img-01.jpg" alt="Image">
		        </div> 
		
		        <div class="tm-slideshow-description tm-slideshow-description-left tm-bg-highlight">
		       	 <div class="margin10">
		            <h2 class="">부산</h2>
		            <div class="margin10">
			            <p>익숙하지만 새로운 부산 여행,</p>
			            <p>겨울 바다와 뜨거운 국밥은 필수 코스!</p>
			        </div>
		            <a href="#" class="text-uppercase tm-btn tm-btn-white tm-btn-white-highlight">예약하기</a>
		        </div>                        
		
		    </section>
		    <section class="tm-slideshow-section">
		        <div class="tm-slideshow">
		            <img src="/resources/img/tm-img-03.jpg" alt="Image">
		            <img src="/resources/img/tm-img-02.jpg" alt="Image">
		            <img src="/resources/img/tm-img-01.jpg" alt="Image">
		        </div>
		        <div class="tm-slideshow-description tm-bg-primary">
		            <h2 class="">강릉</h2>
		            <div class="margin10">
			            <p>놀킷 멋킷 넘치는 핫한 강릉</p>
			            <p>가족 여행도 청춘 여행도 좋아요!</p>
		            </div>
		            <a href="#" class="text-uppercase tm-btn tm-btn-white tm-btn-white-primary">예약하기</a>
		        </div>
		    </section>
		</div>        

		<%@ include file="../layout/bottom.jsp"%>
	</div>
</div>

<script> 

    /* DOM is ready
    ------------------------------------------------*/
    $(function(){

        // Change top navbar on scroll
        $(window).on("scroll", function() {
            if($(window).scrollTop() > 100) {
                $(".tm-top-bar").addClass("active");
                $(".top_block").css("display","none");
            } else {                    
             $(".tm-top-bar").removeClass("active");
             $(".top_block").css("display","block");
            }
        });

        // Smooth scroll to search form
        $('.tm-down-arrow-link').click(function(){
            $.scrollTo('#tm-section-search', 300, {easing:'linear'});
        });

        // Date Picker in Search form
        var pickerCheckIn = datepicker('#start_date');
        var pickerCheckOut = datepicker('#end_date');

        // Update nav links on scroll
        $('#tm-top-bar').singlePageNav({
            currentClass:'active',
            offset: 60
        });

        // Close navbar after clicked
        $('.nav-link').click(function(){
            $('#mainNav').removeClass('show');
        });

        // Slick Carousel
        $('.tm-slideshow').slick({
            infinite: true,
            arrows: true,
            slidesToShow: 1,
            slidesToScroll: 1
        });

//         loadGoogleMap();                                       // Google Map                
        $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright           
    });

</script> 
</body>
</html>

