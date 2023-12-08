<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<main>
        <h3 class="pageTitle">공지사항</h3>
        <ul class="noticeList">
	        <c:choose>
	        	<c:when test="${empty noticeList}">	        		
            		<li class="noticeItem noList">
            			<h6>공지사항이 없습니다</h6>
            		</li>
	        	</c:when>
	        	<c:when test="${!empty noticeList}">
	        		<c:forEach var="notice" items="${noticeList}" varStatus="noticeNum">
	        			<li class="noticeItem">
			                <div class="titleBox">
			                    <span class="num">${notice.notice_num}</span>
			                    <h6 class="title">${notice.notice_title}</h6>
			                    <span class="date">${notice.notice_date}</span>
			                    <span class="icon material-symbols-outlined">keyboard_arrow_down</span>
			                </div>
			                <div class="contentBox">
				                <p>
				                    ${notice.notice_cont}
				                </p>
			                </div>
			            </li>
	        		</c:forEach>
	        	</c:when>
	        </c:choose>
        </ul>

        <div class="paging">        
            <ul>
	        	<c:if test="${totNotices != 0}">
	        		<c:choose>
	        			<c:when test="${totNotices > 100}">
	        				<c:forEach var="page" begin="1" end="${endValue}" step="1">
	        					<c:if test="${section > 1 && page ==1}">
					                <li class="arrow prev disabled">
					                	<button onclick="${contextPath}/notice.do?section=${section-1}&pageNum=${(section-1)*10+1}}">
					                		<span class="material-symbols-outlined">navigate_before</span>
					                	</button>
					                </li>
	        					</c:if>
	        					<c:choose>
	        						<c:when test="${page == pageNum}">
						                <li class="active"><a href="${contextPath}/notice.do?section=${section}&pageNum=${page}">${(section-1)*10+page}</a></li>
	        						</c:when>
	        						<c:otherwise>
						                <li><a href="${contextPath}/notice.do?section=${section}&pageNum=${page}">${(section-1)*10+page}</a></li>
	        						</c:otherwise>
	        					</c:choose>
	        					<c:if test="${page == 10}">
					                <li>
					                	<button onclick="${contextPath}/notice.do?section=${section+1}&pageNum=${section*10+1}">
					                		<span class="material-symbols-outlined">navigate_next</span>
					                	</button>
					                </li>
	        					</c:if>
	        				</c:forEach>
			            </c:when>
			            <c:when test="${totNotices <= 100}">
			            	<c:if test="${(totNotices mod 10) == 0}">
			            		<c:set var="totNotices" value="${totNotices -1}"></c:set>
			            	</c:if>
			            	<c:forEach var="page" begin="1" end="${totNotices/10+1}" step="1">
			            		<c:choose>
			            			<c:when test="${page == pageNum}">
			            				<li class="active"><a href="${contextPath}/notice.do?section=${section}&pageNum=${page}">${page}</a></li>
			            			</c:when>
			            			<c:otherwise>
			            				<li><a href="${contextPath}/notice.do?section=${section}&pageNum=${page}">${page}</a></li>
			            			</c:otherwise>
			            		</c:choose>
			            	</c:forEach>
			            </c:when>
		            </c:choose>
	            </c:if>
			</ul>
        </div>
    </main>
</body>
</html>