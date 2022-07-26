<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pop_title</title>
<script type="text/javascript">
$(function(){
	console.log("asd");
	var count = 3;//첨부파일 태그 개수
	$("#plus").click(function(){
		if(count == 5) return;
		count++;
		$("#file_form").append("<p><input type='file' name='file'></p>");
	});
	$("#minus").click(function(){
		if(count == 1) return;
			$(this).parent().parent().children("p").last().remove();
		count--;
	});
});
</script>
</head>
<body>
<h2>영화 상세 설정 페이지</h2>
		<form action="uploadmovie.do" method="post" enctype="multipart/form-data">
		<p>영화 제목(한)
		<input type="text" name="title" value="${requestScope.movie.title }" placeholder="영화 제목(한)"> 영화 제목(영)<input type="text" name="titleEng" value="${requestScope.movie.titleEng }"placeholder="영화 제목(영)"></p>
		<p>감독(한)<input type="text" name="directorNm" value="${requestScope.movie.directorNm }"placeholder="감독(한)">
		감독(영)<input type="text" name="directorEnNm" value="${requestScope.movie.directorEnNm }"placeholder="감독(영)"></p>
		<p>배우(한)<input type="text" name="actorNm" value="${requestScope.movie.actorNm }"placeholder="배우(한)"></p>
		<p>배우(영)<input type="text" name="actorEnNm" value="${requestScope.movie.actorEnNm }"placeholder="배우(영)"></p>
		<p>제작사<input type="text" name="company" value="${requestScope.movie.company }"placeholder="제작사"></p>
		<p>국가<input type="text" name="nation" value="${requestScope.movie.nation }"placeholder="국가"></p>
		<p>장르<input type="text" name="genre" value="${requestScope.movie.genre }"placeholder="장르"></p>
		<p>관람 등급<input type="text" name="rating" value="${requestScope.movie.rating }"placeholder="관람 등급"></p>
		<p>상영시간<input type="text" name="runtime" value="${requestScope.movie.runtime }"placeholder="상영시간"></p>
		<p>개봉일<input type="text" name="repRlsDate" value="${requestScope.movie.repRlsDate }"placeholder="개봉일"></p>
		<p>키워드<input type="text" name="keywords" value="${requestScope.movie.keywords }"placeholder="키워드"></p>
		<p>줄거리<textarea rows="5" cols="50" name="plotText"placeholder="줄거리">${requestScope.movie.plotText }</textarea></p>
		<p>상세보기 페이지<input type="text" name="kmdbUrl" value="${requestScope.movie.kmdbUrl }"placeholder="상세보기 페이지"></p>
		 <p>상영날짜<input type="text" name="startdate" value="${requestScope.scdto.startdate }"placeholder="상영 시작 날짜"> ~ 
	<input type="text" name="enddate" value="${requestScope.scdto.enddate }"placeholder="상영 종료 날짜"> 
		<c:forEach var="f" items="${requestScope.Filepath }">
							 <a href="fileDown.do?fno=${f.fno}&mcode=${f.mcode}">
							${f.fileName}</a><br>
							<c:if test="${f.type =='image' }">
								<img src="fileDown.do?fno=${f.fno}&mcode=${f.mcode}">
							</c:if> 
						</c:forEach>
		<div id="file_form">
						<p><input type="file" name="file"> 
						<button type="button" id="plus">+</button> <button type="button" id="minus">-</button></p>
						<p><input type="file" name="file"></p>
						<p><input type="file" name="file"></p>
		</div>
		<p><button>저장</button></p>
		<p><input type="hidden" name="update" value=${requestScope.movie.mcode }></p>
		<p><button>뒤로가기</button></p>
	</form>
</body>
</html>