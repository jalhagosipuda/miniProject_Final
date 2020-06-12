<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style></style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
	</script>	
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
		
        <div class="container">
        
        	<a class="navbar-brand" href="#">Model2 MVC Shop</a>
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<div class="collapse navbar-collapse"  id="target">
	             <ul class="nav navbar-nav navbar-right">
	                 <li><a href="#">회원가입</a></li>
	                 <li><a href="#">로 그 인</a></li>
	           	</ul>
	       </div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- 다단레이아웃  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu 구성 Start /////////////////////////////////////-->     	
			<div class="col-md-3">
		        
		       	<!--  회원관리 목록에 제목 -->
				<div class="panel panel-primary">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-heart"></i> 회원관리
         			</div>
         			<!--  회원관리 아이템 -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#">개인정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#">회원정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-primary">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-briefcase"></i> 판매상품관리
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#">판매상품등록</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#">판매상품관리</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-primary">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-shopping-cart"></i> 상품구매
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">상품검색</a></li>
						  <li class="list-group-item">
						  	<a href="#">구매이력조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						  </li>
						 <li class="list-group-item">
						 	<a href="#">최근본상품</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu 구성 end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-9">
				<div class="jumbotron">
			  		<h1>Model2 MVC Shop</h1>
			  		<p>로그인 후 사용가능...</p>
			  		<p>로그인 전 검색만 가능합니다.</p>
			  		<p>회원가입 하세요.</p>
			  		
			  		<div class="text-center">
			  			<a class="btn btn-info btn-lg" href="#" role="button">회원가입</a>
			  			<a class="btn btn-info btn-lg" href="#" role="button">로 그 인</a>
			  		</div>
			  	
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- 다단레이아웃  end /////////////////////////////////////-->
		
	</div>
	<!--  화면구성 div end /////////////////////////////////////-->
	
	<div class="snowflake" aria-hidden="true"> 
	<div class="snowflake">서연희♥김준호</div>
	<div class="snowflake">김준호♥서연희</div>
	<div class="snowflake">이수한♥이수한</div>
	<div class="snowflake">김대곤♥김대곤</div>
	<div class="snowflake">도정민♥도정민</div>
	<div class="snowflake">배범희♥배범희</div>
	<div class="snowflake">황정현♥황정현</div>
	<div class="snowflake">최지은♥최지은</div>
	<div class="snowflake">정윤세♥정윤세</div>
	<div class="snowflake">이윤경♥이윤경</div>
	<div class="snowflake">최선희♥최선희</div>
	<div class="snowflake">김선욱♥김선욱</div>
	<div class="snowflake">조성진♥조성진</div>
	<div class="snowflake">최수하♥최수하</div>
	<div class="snowflake">이정하♥이정하</div>
	<div class="snowflake">김태욱♥김태욱</div>
	<div class="snowflake">이하니♥이하니</div>
	<div class="snowflake">손건♥손건</div>
	<style> .snowflake { color: magenta; font-size: 1.3em; font-family: Fantasy; text-shadow: 0 0 1px #000; } @-webkit-keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@-webkit-keyframes snowflakes-shake{0%,100%{-webkit-transform:translateX(0);transform:translateX(0)}50%{-webkit-transform:translateX(80px);transform:translateX(80px)}}@keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@keyframes snowflakes-shake{0%,100%{transform:translateX(0)}50%{transform:translateX(80px)}}.snowflake{position:fixed;top:-10%;z-index:9999;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default;-webkit-animation-name:snowflakes-fall,snowflakes-shake;-webkit-animation-duration:10s,3s;-webkit-animation-timing-function:linear,ease-in-out;-webkit-animation-iteration-count:infinite,infinite;-webkit-animation-play-state:running,running;animation-name:snowflakes-fall,snowflakes-shake;animation-duration:10s,3s;animation-timing-function:linear,ease-in-out;animation-iteration-count:infinite,infinite;animation-play-state:running,running}.snowflake:nth-of-type(0){left:1%;-webkit-animation-delay:0s,0s;animation-delay:0s,0s}.snowflake:nth-of-type(1){left:5%;-webkit-animation-delay:1s,1s;animation-delay:1s,1s}.snowflake:nth-of-type(2){left:10%;-webkit-animation-delay:6s,.5s;animation-delay:6s,.5s}.snowflake:nth-of-type(3){left:15%;-webkit-animation-delay:4s,2s;animation-delay:4s,2s}.snowflake:nth-of-type(4){left:20%;-webkit-animation-delay:2s,2s;animation-delay:2s,2s}.snowflake:nth-of-type(5){left:25%;-webkit-animation-delay:8s,3s;animation-delay:8s,3s}.snowflake:nth-of-type(6){left:30%;-webkit-animation-delay:6s,2s;animation-delay:6s,2s}.snowflake:nth-of-type(7){left:35%;-webkit-animation-delay:2.5s,1s;animation-delay:2.5s,1s}.snowflake:nth-of-type(8){left:40%;-webkit-animation-delay:1s,0s;animation-delay:1s,0s}.snowflake:nth-of-type(9){left:45%;-webkit-animation-delay:3s,1.5s;animation-delay:3s,1.5s}.snowflake:nth-of-type(10){left:50%;-webkit-animation-delay:0s,0s;animation-delay:0s,0s}.snowflake:nth-of-type(11){left:55%;-webkit-animation-delay:1s,1s;animation-delay:1s,1s}.snowflake:nth-of-type(12){left:60%;-webkit-animation-delay:6s,.5s;animation-delay:6s,.5s}.snowflake:nth-of-type(13){left:65%;-webkit-animation-delay:4s,2s;animation-delay:4s,2s}.snowflake:nth-of-type(14){left:70%;-webkit-animation-delay:2s,2s;animation-delay:2s,2s}.snowflake:nth-of-type(15){left:75%;-webkit-animation-delay:8s,3s;animation-delay:8s,3s}.snowflake:nth-of-type(16){left:80%;-webkit-animation-delay:6s,2s;animation-delay:6s,2s}.snowflake:nth-of-type(17){left:85%;-webkit-animation-delay:2.5s,1s;animation-delay:2.5s,1s}.snowflake:nth-of-type(18){left:90%;-webkit-animation-delay:1s,0s;animation-delay:1s,0s}.snowflake:nth-of-type(19){left:95%;-webkit-animation-delay:3s,1.5s;animation-delay:3s,1.5s} </style> </div>

</body>

</html>