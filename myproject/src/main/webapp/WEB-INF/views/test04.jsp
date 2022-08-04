<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function() {
	  $(document).on('click', '.exampleButton', function() {
		  var param1= 'ada';
	function create_form(nm,mt,ac,tg) {
	    var fm = document.createElement("form");
	    fm.name = nm;
	    fm.method = mt;
	    fm.action = ac;
	    fm.target = tg;
	      
	    return fm;
	}
	// 동적으로 input 객체 생성
	function add_input(fm,nm,vu){
	    var input = document.createElement("input");
	    input.type = "hidden";
	    input.name = nm;
	    input.value =  vu;
	    fm.insertBefore(input,null);
	    return fm;
	}
	function frmSubmit(param1){
	    var frm = create_form('dummy', 'POST', '/test02.do', 'dummyPop')
	    fm = add_input(fm,'param1',param1);
	   document.body.insertBefore(fm,null);
	    
	   //  post 방식으로 popup을 open하기 위하여 url을 공백으로 넘긴다.
	   window.open('','dummy',"width=370, height=360, resizable=no, scrollbars=no, status=no;"); 
	 
	   fm.submit();
	}
	  });
	});
	
</script>
</head>
<BODY>
<button class="exampleButton">전송</button>
</BODY>
</HTML>