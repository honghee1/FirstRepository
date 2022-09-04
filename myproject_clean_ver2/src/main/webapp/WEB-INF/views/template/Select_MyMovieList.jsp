<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template -->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="../resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<style type="text/css">
h2 {
	text-align: center;
}

.container {
	text-align: center;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
}

thead>tr {
	border-top: 1px solid black;
	border-bottom: 1px double black;
}

tbody>tr {
	border-bottom: 1px solid black;
}

td, th {
	width: 10%;
	padding: 5px 10px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".delete").click(function() {
	var rowData = new Array();
	var tdArr = new Array();
	var checkbox = $("input[name=user_CheckBox]:checked");
	checkbox.each(function(i) {
		var tr = checkbox.parent().parent().eq(i);
		var td = tr.children();
		rowData.push(tr.text());
		var no = td.eq(1).text();
		tdArr.push(no);
	});
	
	
	var new_form = $('<form></form>');
    new_form.attr("name", "test_form");
    new_form.attr("method", "post");
    new_form.attr("action", "deletemovie.do");

    new_form.append($('<input/>', {type: 'hidden', name: 'mcode', value: tdArr}));
	
    new_form.appendTo('body');
    console.log(tdArr);
    new_form.submit();
});
});
</script>
</head>
<body>
	<h2>현재 저장된 영화 목록 페이지</h2>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<br> <a href="insertMovie.do" class="btn btn-success btn-icon-split"> <span
				class="icon text-white-50"> <i>+</i>
			</span> <span class="text" id="selectBtn">추가</span>
			</a> <a href="#" class="btn btn-danger btn-icon-split" > <span
				class="icon text-white-50"><i class="fas fa-trash"></i> </span> <span
				class="text delete" >삭제</span>
			</a>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>선택</th>
							<th>index</th>
							<th>상영 시작일</th>
							<th>상영 종료일</th>
							<th>영화 한글 제목</th>
							<th>영화 영어 제목</th>
							<th>영화 감독(한)</th>
							<th>영화 감독(영)</th>
							<th>영화 배우(한)</th>
							<th>영화 배우(영)</th>
							<th>제작사</th>
							<th>국가</th>
							<th>영화 장르</th>
							<th>영화 등급</th>
							<th>상여 시간</th>
							<th>개봉일</th>
							<th>키워드</th>
							<th>영화 상세 정보</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="Movielist" items="${requestScope.Movielist }" varStatus="status">
							<tr>
								<td><input type="checkbox" id="horns" name="user_CheckBox"></td>
								<td>${Movielist.mcode }</td>
								<td> ${Movielist.startdate}</td>
								<td> ${Movielist.enddate}</td>
								<td><a href="movieView.do?mcode=${Movielist.mcode }&update=y">
										${Movielist.title }</a></td>
								<td>${Movielist.titleEng }</td>
								<td>${Movielist.directorNm }</td>
								<td>${Movielist.directorEnNm }</td>
								<td>${Movielist.actorNm }</td>
								<td>${Movielist.actorEnNm }</td>
								<td>${Movielist.company }</td>
								<td>${Movielist.nation }</td>
								<td>${Movielist.genre }</td>
								<td>${Movielist.rating }</td>
								<td>${Movielist.runtime }</td>
								<td>${Movielist.repRlsDate }</td>
								<td>${tMovielisto.keywords }</td>
								<td>${Movielist.kmdbUrl }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="../resources/js/demo/datatables-demo.js"></script>
</body>
</html>