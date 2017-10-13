<%@page import="com.free.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/common/root.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="root" value="${pageContext.request.contextPath}"/>   

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<link rel="stylesheet" href="${root}/css/bootstrap readable.min.css">
    <link rel="stylesheet" href="${root}/css/bootstrap readable.css">
    <script src="${root}/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="${root}/css/main/main.css">
    <link rel="stylesheet" href="${root}/css/main/nav.css">
    
    <script src="${root}/js/main/main.js"></script>
    
 	<title>제주도 여행!</title>
	
</head>
<body>
<body>
<%@ include file="/common/loginmodal.jsp"%>
<%@ include file="/common/commonform.jsp"%>

<div class="">

    <div class="">
    <header class="main_header" style="height: 80px; text-align: center;">
      <h1>Jeju Diving & GuestHouse</h1>
    </header>

    <nav class="navbar navbar-default navbar-static-top main_nav" data-spy="affix" data-offset-top="78">
      <div class="container"
    		style="padding: 2px; margin-top: auto; margin-bottom: auto;">

          <div class="navbar-header">
            <a class="navbar-brand" href="${root}/admin/main.html">Freedive</a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>

          <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav">
<!--               <li class="dropdown">
                <a class="dropdown-toggle" id="themes" href="#" data-toggle="dropdown">바다정보 <span class="caret"></span></a>
                <ul class="dropdown-menu" aria-labelledby="themes">
                  <li><a href="">동</a></li>
                  <li><a href="">서</a></li>
                  <li><a href="">남</a></li>
                  <li><a href="">북</a></li>
                </ul>
              </li> -->
              <li>
                <a href="${root}/map/map.html">지도</a>
              </li>
              <li>
                <a href="#" class="tour">투어</a>
              </li>
              <li>
                <a href="#" class="guesthouse" id="guesthouse">게스트하우스</a>
              </li>
              <li>
              	<a href="#" onclick="return false" class="freeboardlist">자유게시판</a>
              </li>
           
            </ul>
            
            <ul class="nav navbar-nav navbar-right">

              <li>
                
                <form id="main_nav_searchForm" class="navbar-form navbar-right" role="search" method="get">
					<div class="form-group">
					  <div class="input-group">
					    <input type="text" class="form-control" id="main_keyword" name="keyword">
					    <span class="input-group-btn">
					      <button class="btn btn-default" type="button" id="main_searchBtn">
					      	<span class="glyphicon glyphicon-search"></span> 검색
					      </button>
					    </span>
					  </div>
					</div>
                </form>
                
              </li>
            </ul>

<%@ include file="/common/loginnav.jsp"%>
            
        </div>
      </div>
    </nav>
  </div>
  
  <div class="container" style="margin-top: 15px;">
    <script type="text/javascript">
    /* Javascript 샘플 코드 */


	/* var xhr = new XMLHttpRequest();
    var url = 'http://openapi.jejutour.go.kr:8080/openapi/service/TourMapService/getTourMapList';
    var queryParams = '?' + encodeURIComponent('ServiceKey=uscY8RM2rqv%2BSxyNdJm49Rgf3CDw3yWUce1NhcaUqizhqu6c%2FP0FJDJE%2Bgibt0SrADO4q9V1R44AL2%2FfF%2BqfEQ%3D%3D');
    queryParams += '&' + encodeURIComponent('CAT') + '=' + encodeURIComponent('TUTUTU01');
    xhr.open('GET', url + queryParams);
    xhr.onreadystatechange = function () {
        if (this.readyState == 4) {
            alert('Status: '+this.status+' Headers: '+JSON.stringify(this.getAllResponseHeaders())+' Body: '+this.responseText);
        }
    };

    xhr.send(''); 
 */  

      // $(document).ready(function() {
      //   $.ajax({
      //     url: 'http://openapi.epost.go.kr/postal/retrieveNewAdressAreaCdSearchAllService/retrieveNewAdressAreaCdSearchAllService/getNewAddressListAreaCdSearchAll',
      //     type: 'get',
      //     data: {
      //       'ServiceKey':'uscY8RM2rqv%2BSxyNdJm49Rgf3CDw3yWUce1NhcaUqizhqu6c%2FP0FJDJE%2Bgibt0SrADO4q9V1R44AL2%2FfF%2BqfEQ%3D%3D',
      //       'countPerPage':'10',
      //       'currentPage':'1',
      //       'srchwrd': '행운2길'
      //     },
      //     dataType: 'xml',
      //     success: writeTour,
      //     error: function (xhr, status, msg) {
      //       alert("상태: " + status + " 메세지: " + msg);
      //     }
      //   });
      //
      // });
      //
      // function writeTour (xhr) {
      //   // var obj = JSON.parse(xhr);
      //   // for(i in obj) {
      //   //   $('<p>').html(obj.item[i]).appendTo('.content');
      //   // }
      //   alert(xhr);
      // }
    </script>
<%--     loginInfo : ${loginInfo.id}
    <br>
    <br>
    <%
    MemberDto loginInfo = (MemberDto) session.getAttribute("loginInfo");
    %>
    loginfInfo from index: <%=loginInfo.getId() %>
    <br>
    	이거는 나중에 지워야 함
    <br> --%>
    
	<div class="container-fluid" style="margin-top: 30px;">
		<c:forEach items="">
		</c:forEach>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<a href="#" class="main_guesthouse_img" data-guestSeq="${guesthouse.guestSeq}">
							<img src="${root}/img/gpic-nubville.jpg" style="height: 300px;">
						</a>
					</div>
				</div>
				<div>
					넙빌레 게스트 하우스
				</div>
			</div>
		</div>
	
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/gpic-cloud.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					구름게스트하우스
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/gpic-badrabbit.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					나쁜토끼게스트하우스
				</div>
			</div>
		</div>

	</div>

	<div class="container-fluid" style="margin-top: 30px;">
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/gpic-dalparan.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					달파란게스트하우스
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/gpic-elmar.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					엘마르게스트하우스
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/gpic-ollebut.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					올레벗게스트하우스
				</div>
			</div>
		</div>
	</div>	
	
	<div class="container-fluid" style="margin-top: 30px;">
		투어!!!!!!!!!!!!!!!!!!!!11111
	</div>

	<div class="container-fluid" style="margin-top: 30px;">
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/Freediving-Freedive-Adventure-Photography-05.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					몰디브 프리다이브
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/freedive silfra tour.png" style="width:300px;">
					</div>
				</div>
				<div>
					실프라 투어!!!
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid gpic-wrapper">
				<div class="gpic">
					<div class="gpic-img">
						<img src="${root}/img/freedive moalboal.jpg" style="width:300px;">
					</div>
				</div>
				<div>
					모알보알
				</div>
			</div>
		</div>
	</div>	

  </div>


	<div class="container main-footer main-footer--white" style="margin-top: 50px;">
		<article class="menubox col-sm-offset-11">
		  <p class="tit">
		    <a href="#top"> Back to top </a><span class="glyphicon glyphicon-arrow-up" style="color: #459ce7"></span>
		  </p>
		
		</article>
		
		<footer class="main-footer container-fluid">
		  <div class="container-fluid" id="wrapfooter">
		
		    <div class="copy col-md-7 col-sm-12 col-xs-12" style="display: inline-block;">
			  <a href="" target="_blank"><span class="glyphicon glyphicon-heart"></span></a>
			  Copyright 2017 victor. All rights reserved. 대표: 임택 <br>
			    Made by Victor Lim. Contact him at victor.taek.lim@gmail.com.<br>
			    Based on Bootstrap. Icons from Font Awesome. Web fonts from Google.
			</div>
			
			<div class="linkbox col-md-5 col-sm-12 col-xs-12">
				<ul class="link foot">
					<li class="link_text"><a onclick="policyPopOpen('fpolicy1','/policy/devcenter-inner/');return false;" href="#none">사이트 이용약관</a></li>
					<li class="link_text"><a class="highlight" onclick="policyPopOpen('fpolicy2','/policy/personal-inner/');return false;" href="#none">개인정보처리방침</a></li>
					<li class="link_text"><a onclick="policyPopOpen('fpolicy3','/policy/openapi-inner/');return false;" href="#none">mail</a></li>
		    	</ul>
		    </div>
		  </div>
		</footer>
	</div>
</div>
</body>
</html>