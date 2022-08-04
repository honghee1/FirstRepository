<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
//타이틀 변경
window.document.title = "값";
//상태표시줄
window.status = "내용!!!" ;
//자식창생성
//window.open("http://naver.com","name","") ;
function opens(src,name,width,height){
var src = 'test02.do' ;
var name = 'asd' ;
var yes = "yes" ;
var no = "no" ;
var menubar = no ;
var toolbar = no ;
var locat = no ;
var scrollbars = no ;
var status = no ;
var left = (window.screen.width-width)/2  ;
var top =  (window.screen.height-height)/2 ;
var width = 100 ;
var height = 200 ;
priverOpens(src,name,width,height,left,top,menubar,toolbar,locat,scrollbars,status) ;
}
function priverOpens(src,name,width,height,left,top,menubar,toolbar,locat,scrollbars,status)
{
  var option = "left="+left+",top="+top+",width="+width+",height="+height+",menubar="+menubar+
",toolbar="+toolbar+",location="+locat+",scrollbars="+scrollbars+",status="+status ;
//alert(option);
window.open(src,name,option) ;
}
function createForm(){
  // 동적으로 폼 생성
   var script = document.createElement("form") ;
   script.id = "frm" ;
   script.name = "frm" ;
   //hidden 값
   var input1 = document.createElement("input") ;
   input1.id = "nm" ;
   input1.name = "nm" ;
   input1.type = "hidden" ;
   input1.value = "안녕" ;
   //append body
   script.appendChild(input1) ;
   document.body.appendChild(script) ;
   var frm = document.getElementById("frm") ;
   window.open("","openTarger","") ;
   //submit
   frm.target = "openTarger" ;
   frm.action = "test02.do";
   frm.method = "post" ; 
   frm.submit()  ;
}
// 스크린 사이즈 구하기
function sizeInfo(){
var print = "" ;
var msg = [''] ;
msg.push("총 원도우 크기 " + window.screen.width ) ;
msg.push("총 원도우 높이 " + window.screen.height ) ;
msg.push(" document 사이즈 " + window.screen.availWidth) ;
msg.push(" document 높이 " + window.screen.availHeight) ;
alert(msg.join(''));
}
    </script>
<BODY>
	<a href="#" onclick="opens('test02.do','test02.do',100,100)">window.open</a>
	<br />
	<a href="#" onclick="sizeInfo()">사이즈</a>
	<br />
	<a href="javascript:createForm()">동적폼으로 팝업에 SUBMIT()</a>
</BODY>
</HTML>