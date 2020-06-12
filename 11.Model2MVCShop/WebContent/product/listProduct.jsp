<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>��ǰ �����ȸ</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<script src="/javascript/bootstrap-dropdownhover.min.js"></script>

<style>
 		body {
            padding-top : 100px;
            padding-left:100px;
            padding-right:100px;
        }
        
        .thumbnail{
        	width:400px;
        	height:500px;
        }
        
		#floatMenu {
			position: absolute;
			width: 200px;
			height: 200px;
			left: 50px;
			top: 250px;;
			color: #000000;
			text-align: center;
		}
 
        
</style>

<script type="text/javascript">
function fncGetUserList(currentPage) {
	
	$("#currentPage").val(currentPage)
	$("form").attr("method" , "POST").attr("action" , "/product/listProduct?menu=${param.menu}&priceSort=${search.priceSort}").submit();
}
$(function() {
 
	 $( "td.ct_btn01:contains('�˻�')" ).on("click" , function() {
		//alert(  $( "td.ct_btn01:contains('�˻�')" ).html() );
		fncGetUserList(1);
	})
	
	
	//$(".ct_list_pop td:nth-child(3)").on("click",function(){
	$("img").on("click",function(){	
	var prodNo=$(this).data('param1');
	var proTranCode=$(this).data('param2');
	
	if(${param.menu=='manage'}){
		self.location ="/product/updateProduct?prodNo="+prodNo+"&menu=${param.menu}";
	}else if(${param.menu=='search'} && proTranCode=='0'){
		self.location ="/product/getProduct?prodNo="+prodNo+"&menu=${param.menu}";
	
	}
	
	})
	
	$("#tranCode2").on("click",function(){
		var prodNo=$(this).data('param1');
		self.location ="/purchase/updateTranCodeByProd?prodNo="+prodNo+"&tranCode=2";
	})
	
	$('#searchCategory').change(function(){
   		if( $('#searchCategory option:selected').val() == "TOP"){
   			fncGetUserList(1);
   		}else if($('#searchCategory option:selected').val() == "BOTTOM"){
   			fncGetUserList(1);
   		}
 	})
 	
 
	
});
$(document).ready(function() {
	 
	// ���� css���� �÷��� ��� ��ġ(top)���� ������ �����Ѵ�.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px �̷������� �������Ƿ� ���⼭ ���ڸ� �����´�. parseInt( �� );
 
	$(window).scroll(function() {
		// ���� ��ũ�� ��ġ�� �����´�.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
 
		/* �ִϸ��̼� ���� �ٷ� ����
		 $("#floatMenu").css('top', newPosition);
		 */
 
		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);
 
	}).scroll();
 
});
</script>
</head>

<body>

<div class="row">

<div class="col-xs-12">
<jsp:include page="/layout/toolbar.jsp" />
<div>


<div style="width:98%; margin-left:10px;">

<form name="detailForm">

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif" width="15" height="37"/>
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
				
				<c:if test="${param.menu=='manage'}">
					<td width="93%" class="ct_ttl01">					
					��ǰ ����					
					</td>
				</c:if>
				
				<c:if test="${param.menu=='search'}">
					<td width="93%" class="ct_ttl01">					
					��ǰ �����ȸ				
					</td>
				</c:if>		
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif" width="12" height="37"/>
		</td>
	</tr>
</table>

<div class="col-xs-2">
<div id=floatMenu>
<hr/>
<jsp:include page="/history.jsp" />
</div>
</div>


<div class="col-xs-9">
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		
		<td align="left">
		      <select name="searchCategory" id="searchCategory">
		      	<option value="0" ${! empty search.searchCategory && search.searchCategory=="0" ? "selected" : ""}>ī�װ�</option>
		      	<option value="TOP" ${! empty search.searchCategory && search.searchCategory=="TOP" ? "selected" : ""}>TOP</option>
		      	<option value="BOTTOM" ${! empty search.searchCategory && search.searchCategory=="BOTTOM" ? "selected" : ""}>BOTTOM</option>
		      </select>
		&nbsp;&nbsp;
		<a href="/product/listProduct?priceSort=1&searchCondition=${search.searchCondition}&searchKeyword=${search.searchKeyword}&sale=${search.sale}&menu=${param.menu}&searchCategory=${search.searchCategory}">[�㰡�ݳ�����]</a>
		<a href="/product/listProduct?priceSort=2&searchCondition=${search.searchCondition}&searchKeyword=${search.searchKeyword}&sale=${search.sale}&menu=${param.menu}&searchCategory=${search.searchCategory}">[�尡�ݳ�����]</a>
		</td>
		
		
	
		<td align="right">
		
			<input type="checkbox" name="sale" value="1" onclick="fncGetUserList(1)" ${! empty search.sale && search.sale==1 ? "checked":""}/>�Ǹ� ���� ��ǰ�� ���� &nbsp;
			
			<select name="searchCondition" class="ct_input_g" style="width:80px">

				<option value="0" ${! empty search.searchCondition && search.searchCondition==0 ? "selected" : ""}>��ǰ��ȣ</option>
				<option value="1" ${! empty search.searchCondition && search.searchCondition==1 ? "selected" : ""}>��ǰ��</option>
				<option value="2" ${! empty search.searchCondition && search.searchCondition==2 ? "selected" : ""}>��ǰ����</option>
					
			</select>
			<input type="text" name="searchKeyword"  value="${! empty search.searchKeyword ? search.searchKeyword : ''}" 
			class="ct_input_g" style="width:200px; height:19px" />
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23">
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						�˻�
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23">
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<br/>
</table>

<br/>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">

	<c:set var="i" value="0" />
	<c:forEach var="product" items="${list}">
		<c:set var="i" value="${ i+1 }" />		
		

  <div class="bs-example" data-example-id="thumbnails-with-custom-content">
  <div class="col-sm-6 col-md-4">
  <div class="thumbnail">
  	<img data-param1="${product.prodNo}" data-param2="${product.proTranCode}" data-src="holder.js/100%x200" src="/images/uploadFiles/${product.fileName}" style="height: 300px; width: 80%;">
  <div class="caption">
  <h3 align="center">${product.prodName}</h3>
  <p align="center">�� ${product.price}</p>
  <p align="center">${product.prodDetail}</p>
  <p align="right">
  		<c:choose>
			<c:when test="${product.proTranCode=='0'}">
					�Ǹ���
			</c:when>
			
			<c:when test="${param.menu=='manage'}">
				<c:if test="${product.proTranCode=='1  '}">
					���ſϷ� 
					<%-- <span id="tranCode2" data-param1="${product.prodNo}" style="color:blue">����ϱ�</span> --%>
					<p align="right">
  					<a id="tranCode2" data-param1="${product.prodNo}" class="btn btn-primary" role="button">����ϱ�</a></p>
				</c:if>
				<c:if test="${product.proTranCode=='2  '}">
					�����
				</c:if>
				<c:if test="${product.proTranCode=='3  '}">
					��ۿϷ�
				</c:if>	
			</c:when>
			
			<c:when test="${param.menu=='search' && user.role=='admin'}">
				<c:if test="${product.proTranCode=='1  '}">
					���ſϷ�
				</c:if>
				<c:if test="${product.proTranCode=='2  '}">
					�����
				</c:if>
				<c:if test="${product.proTranCode=='3  '}">
					��ۿϷ�
				</c:if>	
			</c:when>
			
			<c:otherwise>
				<span style="color:red">������</span>
			</c:otherwise>
		</c:choose></p>
  </div>
  </div>
  </div>
  </div>  	
	</c:forEach>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td align="center">
		<input type="hidden" id="currentPage" name="currentPage" value=""/>

			<jsp:include page="../common/pageNavigator.jsp"/>	
			
    	</td>
	</tr>
</table>
<!--  ������ Navigator �� -->




</form>
</div>
</div>
</div>
</body>
</html>