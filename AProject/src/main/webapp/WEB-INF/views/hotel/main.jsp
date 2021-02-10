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
		                            <label for="inputCity">목적지</label>
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
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
		                                <label for="inputRoom">객실</label>
		                                <select name="room" class="form-control tm-select" id="inputRoom">
		                                    <option value="1" selected>1 Room</option>
		                                    <option value="2">2 Rooms</option>
		                                    <option value="3">3 Rooms</option>
		                                    <option value="4">4 Rooms</option>
		                                    <option value="5">5 Rooms</option>
		                                    <option value="6">6 Rooms</option>
		                                    <option value="7">7 Rooms</option>
		                                    <option value="8">8 Rooms</option>
		                                    <option value="9">9 Rooms</option>
		                                    <option value="10">10 Rooms</option>
		                                </select>                                        
		                            </div>
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
		                                    <option value="10">10</option>
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
		                        </div>
		                    </div> <!-- form-row -->
		                    <div class="form-row tm-search-form-row">
		                    	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
									<label for="inputCheckIn" class="tit">여행일정</label>
		                        	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-1"> 
			                           <input name="check_in" type="text" class="form-control" id="check_in" placeholder="날짜선택">
		                            </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-2"> 
		                            	~ 
		                            </div>
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2-1"> 
		                            	<input name="check_out" type="text" class="form-control" id="check_out" placeholder="날짜선택">
		                            </div>
		                        </div>
		                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
		                            <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
			                            <label for="btnSubmit">&nbsp;</label>
			                            <button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="btnSubmit">항공권 검색</button>
			                        </div>
		                        </div>
		                    </div>                              
		                </form>                             
		
		            </div> <!-- row -->
		            <div class="tm-banner-overlay"></div>
		        </div>  <!-- .container -->                   
		    </div>     <!-- .tm-container-outer -->                 
		</section>
		
		
		<div class="tm-container-outer" id="tm-section-3">
		    <ul class="nav nav-pills tm-tabs-links">
		        <li class="tm-tab-link-li">
		            <a href="#1a" data-toggle="tab" class="tm-tab-link">
<!-- 		                <img src="/resources/img/north-america.png" alt="Image" class="img-fluid"> -->
		                #제주
		            </a>
		        </li>
		        <li class="tm-tab-link-li">
		            <a href="#2a" data-toggle="tab" class="tm-tab-link">
<!-- 		                <img src="/resources/img/south-america.png" alt="Image" class="img-fluid"> -->
		                #부산
		            </a>
		        </li>
		        <li class="tm-tab-link-li">
		            <a href="#3a" data-toggle="tab" class="tm-tab-link">
<!-- 		                <img src="/resources/img/europe.png" alt="Image" class="img-fluid"> -->
		                #강릉
		            </a>
		        </li>
		        <li class="tm-tab-link-li">
		            <a href="#4a" data-toggle="tab" class="tm-tab-link active"><!-- Current Active Tab -->
<!-- 		                <img src="/resources/img/asia.png" alt="Image" class="img-fluid"> -->
		                #여수
		            </a>
		        </li>
		    </ul>
		    <div class="tab-content clearfix">
		    	
		        <!-- Tab 1 -->
		        <div class="tab-pane fade" id="1a">
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">North Garden Resort</h3>
		                        <p class="tm-text-highlight">One North</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$110</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Felis nec dignissim</h3>
		                        <p class="tm-text-highlight">Two North</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <div id="preload-hover-img"></div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$120</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Sed fermentum justo</h3>
		                        <p class="tm-text-highlight">Three North</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$130</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Maecenas ultricies neque</h3>
		                        <p class="tm-text-highlight">Four North</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$140</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->
		        
		        <!-- Tab 2 -->
		        <div class="tab-pane fade" id="2a">
		
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">South Resort Hotel</h3>
		                        <p class="tm-text-highlight">South One</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$220</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Aenean ac ante nec diam</h3>
		                        <p class="tm-text-highlight">South Second</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$230</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Suspendisse nec dapibus</h3>
		                        <p class="tm-text-highlight">South Third</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$240</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Aliquam viverra mi at nisl</h3>
		                        <p class="tm-text-highlight">South Fourth</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$250</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->          
		        
		        <!-- Tab 3 -->     
		        <div class="tab-pane fade" id="3a">
		
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Europe Hotel</h3>
		                        <p class="tm-text-highlight">Venecia, Italy</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$330</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">In viverra enim turpis</h3>
		                        <p class="tm-text-highlight">Paris, France</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$340</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Volutpat pellentesque</h3>
		                        <p class="tm-text-highlight">Barcelona, Spain</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$350</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Grand Resort Pasha</h3>
		                        <p class="tm-text-highlight">Istanbul, Turkey</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$360</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->
		        
		        <!-- Tab 4 -->
		        <div class="tab-pane fade show active" id="4a">
		        <!-- Current Active Tab WITH "show active" classes in DIV tag -->
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Asia Resort Hotel</h3>
		                        <p class="tm-text-highlight">Singapore</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$440</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Nullam eget est a nisl</h3>
		                        <p class="tm-text-highlight">Yangon, Myanmar</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <div id="preload-hover-img"></div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$450</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Proin interdum ullamcorper</h3>
		                        <p class="tm-text-highlight">Bangkok, Thailand</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$460</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Lorem ipsum dolor sit</h3>
		                        <p class="tm-text-highlight">Vientiane, Laos</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$470</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->
		        
		        <!-- Tab 5 -->
		        <div class="tab-pane fade" id="5a">
		
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Africa Resort Hotel</h3>
		                        <p class="tm-text-highlight">First City</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$550</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Aenean ac magna diam</h3>
		                        <p class="tm-text-highlight">Second City</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$560</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Beach Barbecue Sunset</h3>
		                        <p class="tm-text-highlight">Third City</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$570</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Grand Resort Pasha</h3>
		                        <p class="tm-text-highlight">Fourth City</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$580</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->   
		        
		        <!-- Tab 6 -->            
		        <div class="tab-pane fade" id="6a">
		
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Hotel Australia</h3>
		                        <p class="tm-text-highlight">City One</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$660</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Proin interdum ullamcorper</h3>
		                        <p class="tm-text-highlight">City Two</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$650</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Beach Barbecue Sunset</h3>
		                        <p class="tm-text-highlight">City Three</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$640</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Grand Resort Pasha</h3>
		                        <p class="tm-text-highlight">City Four</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$630</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->
		        
		        <!-- Tab 7 -->
		        <div class="tab-pane fade" id="7a">
		
		            <div class="tm-recommended-place-wrap">
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Antartica Resort</h3>
		                        <p class="tm-text-highlight">Ant City One</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$770</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>                        
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-05.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Pulvinar Semper</h3>
		                        <p class="tm-text-highlight">Ant City Two</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$230</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-06.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Cras vel sapien</h3>
		                        <p class="tm-text-highlight">Ant City Three</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$140</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>
		
		                <div class="tm-recommended-place">
		                    <img src="/resources/img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img">
		                    <div class="tm-recommended-description-box">
		                        <h3 class="tm-recommended-title">Nullam eget est</h3>
		                        <p class="tm-text-highlight">Ant City Four</p>
		                        <p class="tm-text-gray">Sed egestas, odio nec bibendum mattis, quam odio hendrerit risus, eu varius eros lacus sit amet lectus. Donec blandit luctus dictum...</p>   
		                    </div>
		                    <a href="#" class="tm-recommended-price-box">
		                        <p class="tm-recommended-price">$190</p>
		                        <p class="tm-recommended-price-link">Continue Reading</p>
		                    </a>
		                </div>    
		            </div>                        
		
		            <a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
		        </div> <!-- tab-pane -->
		    </div>
		</div>
		
		<div class="tm-container-outer tm-position-relative" id="tm-section-4">
<!-- 		    <div id="google-map"></div> -->
			<div id="map" style="width: 100%; height: 500px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63f20733c5894cf7ee5fffc8d77e60dd"></script>
			<script>
				var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
				var options = { //지도를 생성할 때 필요한 기본 옵션
					center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
					level: 3 //지도의 레벨(확대, 축소 정도)
				};
	
				var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
			</script>
		    <form action="index.html" method="post" class="tm-contact-form">
		        <div class="form-group tm-name-container">
		            <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name"  required/>
		        </div>
		        <div class="form-group tm-email-container">
		            <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email"  required/>
		        </div>
		        <div class="form-group">
		            <input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="Subject"  required/>
		        </div>
		        <div class="form-group">
		            <textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="Message" required></textarea>
		        </div>
		        <button type="submit" class="btn btn-primary tm-btn-primary tm-btn-send text-uppercase">Send Message Now</button>
		    </form>
		</div> <!-- .tm-container-outer -->
		
				

		<%@ include file="../layout/bottom.jsp"%>
	</div>
</div>
<!-- load JS files -->
<script src="/resources/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
<script src="/resources/js/popper.min.js"></script>                    <!-- https://popper.js.org/ -->       
<script src="/resources/js/bootstrap.min.js"></script>                 <!-- https://getbootstrap.com/ -->
<script src="/resources/js/datepicker.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
<script src="/resources/js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
<script src="/resources/slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->
<script src="/resources/js/jquery.scrollTo.min.js"></script>           <!-- https://github.com/flesler/jquery.scrollTo -->
<script> 
    /* Google Maps
    ------------------------------------------------*/
    var map = '';
    var center;

//     function initialize() {
//         var mapOptions = {
//             zoom: 16,
//             center: new google.maps.LatLng(37.769725, -122.462154),
//             scrollwheel: false
//         };

//         map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

//         google.maps.event.addDomListener(map, 'idle', function() {
//           calculateCenter();
//       });

//         google.maps.event.addDomListener(window, 'resize', function() {
//           map.setCenter(center);
//       });
//     }

//     function calculateCenter() {
//         center = map.getCenter();
//     }

//     function loadGoogleMap(){
//         var script = document.createElement('script');
//         script.type = 'text/javascript';
//         script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&' + 'callback=initialize';
//         document.body.appendChild(script);
//     } 

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
        var pickerCheckIn = datepicker('#inputCheckIn');
        var pickerCheckOut = datepicker('#inputCheckOut');

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

