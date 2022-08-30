<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

i {
	font-weight: bold;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">메인 페이지 무비 차트</h6>
			<br> <a href="#" class="btn btn-success btn-icon-split"> <span
				class="icon text-white-50"> <i>+</i>
			</span> <span class="text">추가</span>
			</a> <a href="#" class="btn btn-danger btn-icon-split"> <span
				class="icon text-white-50"><i class="fas fa-trash"></i>
			</span> <span class="text">삭제</span>
			</a>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
						<th>선택</th>
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
						<c:forEach var="dto" items="${requestScope.list }">
							<tr>
								<td><input type="checkbox" id="horns" name="horns"></td>
								<td><a href="movieView.do?mcode=${dto.mcode }">
									${dto.title }</a></td>
								<td>${dto.titleEng }</td>
								<td>${dto.directorNm }</td>
								<td>${dto.directorEnNm }</td>
								<td>${dto.actorNm }</td>
								<td>${dto.actorEnNm }</td>
								<td>${dto.company }</td>
								<td>${dto.nation }</td>
								<td>${dto.genre }</td>
								<td>${dto.rating }</td>
								<td>${dto.runtime }</td>
								<td>${dto.repRlsDate }</td>
								<td>${dto.keywords }</td>
								<td>${dto.kmdbUrl }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	</div>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">무비 차트 페이지</h6>
			<br> <a href="#" class="btn btn-success btn-icon-split"> <span
				class="icon text-white-50"> <i>+</i>
			</span> <span class="text">추가</span>
			</a> <a href="#" class="btn btn-danger btn-icon-split"> <span
				class="icon text-white-50"><i class="fas fa-trash"></i>
			</span> <span class="text">삭제</span>
			</a>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>선택</th>
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
						<c:forEach var="dto" items="${requestScope.list }">
							<tr>
								<td><a href="movieView.do?mcode=${dto.mcode }">
										${dto.title }</a></td>
								<td>${dto.titleEng }</td>
								<td>${dto.directorNm }</td>
								<td>${dto.directorEnNm }</td>
								<td>${dto.actorNm }</td>
								<td>${dto.actorEnNm }</td>
								<td>${dto.company }</td>
								<td>${dto.nation }</td>
								<td>${dto.genre }</td>
								<td>${dto.rating }</td>
								<td>${dto.runtime }</td>
								<td>${dto.repRlsDate }</td>
								<td>${dto.keywords }</td>
								<td>${dto.kmdbUrl }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
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