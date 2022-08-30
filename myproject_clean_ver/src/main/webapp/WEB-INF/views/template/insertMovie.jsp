<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pop_title</title>
<script type="text/javascript">
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String titleEng = request.getParameter("titleEng");
	String directorNm = request.getParameter("directorNm");
	String directorEnNm = request.getParameter("directorEnNm");
	String actorNm = request.getParameter("actorNm");
	String actorEnNm = request.getParameter("actorEnNm");
	String company = request.getParameter("company");
	String nation = request.getParameter("nation");
	String genre = request.getParameter("genre");
	String rating = request.getParameter("rating");
	String runtime = request.getParameter("runtime");
	String repRlsDate = request.getParameter("repRlsDate");
	String keywords = request.getParameter("keywords");
	String plotText = request.getParameter("plotText");
	String kmdbUrl = request.getParameter("kmdbUrl");
	String startdate = request.getParameter("startdate");
	String enddate = request.getParameter("startdate");
	if(title == null)title="";
	if(titleEng == null)titleEng="";
	if(directorNm == null)directorNm="";
	if(directorEnNm == null)directorEnNm="";
	if(actorNm == null)actorNm="";
	if(actorEnNm == null)actorEnNm="";
	if(company == null)company="";
	if(nation == null)nation="";
	if(genre == null)genre="";
	if(rating == null)rating="";
	if(runtime == null)runtime="";
	if(repRlsDate == null)repRlsDate="";
	if(keywords == null)keywords="";
	if(plotText == null)plotText="";
	if(kmdbUrl == null)kmdbUrl="";
	if(startdate == null)startdate="";
	if(enddate == null)enddate="";
%>
</script>
<script>
$(function(){
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
		<form id="file_form" action="uploadmovie.do" method="post" enctype="multipart/form-data">
		<p>영화 제목(한)<input type="text" name="title" value="<%=title %>" placeholder="영화 제목(한)"></p>
		<p>영화 제목(영)<input type="text" name="titleEng" value="<%=titleEng %>"placeholder="영화 제목(영)"></p>
		<p>감독(한)<input type="text" name="directorNm" value="<%=directorNm %>"placeholder="감독(한)"></p>
		<p>감독(영)<input type="text" name="directorEnNm" value="<%=directorEnNm %>"placeholder="감독(영)"></p>
		<p>배우(한)<input type="text" name="actorNm" value="<%=actorNm %>"placeholder="배우(한)"></p>
		<p>배우(영)<input type="text" name="actorEnNm" value="<%=actorEnNm %>"placeholder="배우(영)"></p>
		<p>제작사<input type="text" name="company" value="<%=company %>"placeholder="제작사"></p>
		<p>국가<input type="text" name="nation" value="<%=nation %>"placeholder="국가"></p>
		<p>장르<input type="text" name="genre" value="<%=genre %>"placeholder="장르"></p>
		<p>관람 등급<input type="text" name="rating" value="<%=rating %>"placeholder="관람 등급"></p>
		<p>상영시간<input type="text" name="runtime" value="<%=runtime %>"placeholder="상영시간"></p>
		<p>개봉일<input type="text" name="repRlsDate" value="<%=repRlsDate %>"placeholder="개봉일"></p>
		<p>키워드<input type="text" name="keywords" value="<%=keywords %>"placeholder="키워드"></p>
		<p>줄거리<textarea rows="5" cols="50" name="plotText"placeholder="줄거리"><%=plotText %></textarea></p>
		<p>상세보기 페이지<input type="text" name="kmdbUrl" value="<%=kmdbUrl %>"placeholder="상세보기 페이지"></p>
		<p>상영날짜<input type="text" name="startdate" value="<%=startdate %>"placeholder="상영 시작 날짜"> ~ 
				 <input type="text" name="enddate" value="<%=enddate %>"placeholder="상영 종료 날짜">
		</p>
		<p><button>업로드</button></p>
		<div id="file_form">
						<p><input type="file" name="file"> 
						<button type="button" id="plus">+</button> <button type="button" id="minus">-</button></p>
						<p><input type="file" name="file"></p>
						<p><input type="file" name="file"></p>
		</div>
	</form>
</body>
</html>