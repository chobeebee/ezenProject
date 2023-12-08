<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="keywords" content="레시피, 혼밥, 요리">
    <meta name="description" content="요리에 관한 모든 정보를 한 번에 보세요">

    <meta property="og:type" content="website">
    <meta property="og:title" content="집슐랭">
    <meta property="og:description" content="요리에 관한 모든 정보를 한 번에 보세요">
    <meta property="og:image" content="">
    <meta property="og:url" content="">

    <!-- favicon-->
    <link rel="shortcut icon" type="text/css" href="">
    <link rel="icon"  type="text/css" href="">

    <!-- google icon CDN -->
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- basic CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/base.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/common.css">

    <!-- page CSS -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/index.css">

    <!-- plugin CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/swiper-bundle.min.css">

	<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>
	<div id="sidebar">
		<tiles:insertAttribute name="sidebar" />
	</div>
	<main>
		<tiles:insertAttribute name="body" />
	</main>
	<footer id="footer">
		<tiles:insertAttribute name="footer" />
	</footer>
	
	
	<!-- js -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="${contextPath}/resources/js/common.js"></script>
    
    <script>
		$(function(){
			//top 버튼
			$('#quick_go_top').on('click', function(){
				$('html, body').animate({
			    	scrollTop: 0
			    },400);
				
			    return false;
			});
		});
	</script>
</body>
</html>