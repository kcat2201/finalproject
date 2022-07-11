<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookings.jsp</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script type="text/javascript">
	//페이지 번호 클릭시 실행할 함수
	function pageProc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}


</script>
<style>
button#btnTicket {
	border: none;
	background-color: #f9f9f9;
}

span.badge.bg-success {
	width: 135px;
	height: 46px;
	margin: auto 0;
	padding-top: 16px;
	background-color:#4291b8;
}

.ticket {
	position: relative;
	right: 107px;
	top: -14px;
	height: 20px;
}

span.badge.bg-info, span.badge.bg-secondary {
	position: relative;
	left: 56px;
	bottom: -20px;
}

i.fas.fa-window-close {
	position: relative;
	left: 150px;
	bottom: 55px;
}

span.date {
	margin: 0 auto;
	font-size: 23px;
	color: #4f6473;
}

img#plane2 {
	position: relative;
	left: 108px;
}

ul.pagination.pagination-primary {
    position: relative;
    left: 447px;
    margin-top: 23px;
}

.booking-box {
    margin: 0 0 25px 0;
}
</style>
<body>

	<!-- section start-->
	<section class="small-section dashboard-section bg-inner"
		data-sticky_parent>
		<div class="container">
			<div class="row">
				<%@include file="../mypage/mypageMenu.jsp"%>
				<div class="col-lg-9">
					<div class="product_img_scroll" data-sticky_column>
						<div class="faq-content tab-content" id="top-tabContent">

							<!-- 항공권 이용내역 조회 -->
							<div class="dashboard-box">
								<div class="dashboard-title">
									<h4>전체 예매 내역</h4>
								</div>
								<!-- 페이징 처리를 위한 form -->
								<form action="<c:url value='/mypage/bookings.do'/>"
									method="post" name="frmPage">
									<input type="hidden" name="currentPage">
									<input type="hidden" name="ticketType" value="${param.ticketType }">
								</form>
								<form action="<c:url value='/mypage/bookings.do'/>"
									method="post" name="frmlist">
								<div class="divRight">
									이벤트 상품 조회 <select name="ticketType">
										<option value=""></option>
										<option value="upcoming"
											<c:if test="${param.ticketType == 'upcoming'}">
									            selected
									         </c:if>>upcoming</option>
										<option value="past"
											<c:if test="${param.ticketType == 'past'}">
									            selected
									         </c:if>>past</option>
									    <option value="all"
											<c:if test="${param.ticketType == 'all'}">
									            selected
									         </c:if>>all</option>
										
									</select> <input type="submit" value="조회">
								</div>
								</form>
								<!-- 페이징 처리를 위한 form -->


								<div class="dashboard-detail">
									<c:if test="${empty list }">
										<div class="booking-box">
											<img id="plane2" src="../assets/images/plane2.png"> <span
												class="date">현재 예매내역이 존재하지 않습니다.</span>
										</div>
									</c:if>
									<c:if test="${!empty list }">
										<c:forEach var="vo" items="${list }">
											<div class="booking-box">
												<div class="date-box">
													<c:set var="startTime" value="${vo.SStarttime }" />

													<span class="day">출발</span> <span class="date">
														${fn:substring(startTime, 2, 4) }/
														${fn:substring(startTime, 5, 7) }/
														${fn:substring(startTime, 8, 10) } </span> <span class="month">${fn:substring(startTime, 11, 16) }</span>
												</div>
												<div class="detail-middle">
													<div class="media">
														<div class="icon">
															<i class="fas fa-plane"></i>
														</div>
														<div class="media-body">
															<h6 class="media-heading">${vo.ADepnm }to
																${vo.AArrnm }</h6>
															<p>
																좌석번호: <span>${vo.PSeat }</span>
															</p>
														</div>
														<div class="media-body">
															<h6 class="media-heading">${vo.SName } / ${vo.alName}</h6>
															<p>
																예매일자: <span><fmt:formatDate value="${vo.RDate }"
																		pattern="yyyy-MM-dd" /></span>
															</p>

														</div>
													</div>
												</div>
												<div class="detail-last">
													<c:set var="now" value="<%=new java.util.Date()%>" />
													<c:choose>
														<c:when test="${vo.SStarttime ge now }">
															<!-- 출발일>=현재 -->
															<span class="badge bg-info">upcoming</span>
														</c:when>
														<c:when test="${vo.SStarttime lt now }">
															<!-- 출발일<현재 -->
															<span class="badge bg-secondary">past</span>
														</c:when>
													</c:choose>
													<!-- 발권  -->
													
													<div class="ticket">
														<a href="<c:url value='/booking/eTicket.do?rNo=${vo.RNo }'/>"
															onclick="window.open(this.href, '_blank', 'width=700, height=600'); return false;">
															<span class="badge bg-success">e-Ticket 발권</span>
														</a>
													
													</div>
												
													<!-- 발권 끝-->
													<a href="#"><i class="fas fa-window-close"
														data-bs-toggle="tooltip" data-placement="top"
														title="cancle booking"></i> </a>
												</div>
											</div>
										</c:forEach>
									</c:if>

									<!-- 페이징관련 -->
									<div class="divPage">
										<nav class="ms-auto me-auto " aria-label="...">

											<ul class="pagination pagination-primary">
												<!-- 이전블럭으로 이동 -->
												<c:if test="${pagingInfo.firstPage>1 }">
													<li class="page-item"><a class="page-link" href="#"
														onclick="pageProc(${pagingInfo.firstPage-1})"
														tabindex="-1"> Previous</a>
												</c:if>
												<!-- 페이지 번호 추가 -->
												<c:forEach var="i" begin="${pagingInfo.firstPage }"
													end="${pagingInfo.lastPage }">
													<c:if test="${i==pagingInfo.currentPage }">
														<li class="page-item"><a class="page-link">${i }</a></li>
													</c:if>

													<c:if test="${i!=pagingInfo.currentPage }">
														<li class="page-item"><a class="page-link" href="#"
															onclick="pageProc(${i})"> ${i} </a></li>
													</c:if>
												</c:forEach>
												<!--  페이지 번호 끝 -->

												<!-- 다음 블럭으로 이동 -->
												<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
													<li class="page-item"><a class="page-link" href="#"
														onclick="pageProc(${pagingInfo.lastPage+1})"> Next </a></li>
												</c:if>
											</ul>
										</nav>
									</div>
									<!-- 페이징 관련 끝 -->
								</div>
							</div>


							<!-- 항공권 이용내역 조회 끝-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section end-->

</body>
</html>

<%@include file="../inc/footer.jsp"%>