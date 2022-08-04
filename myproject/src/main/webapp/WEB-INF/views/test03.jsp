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
	    var form = $('<form></form>');
	    form.attr('action', 'test02.do');
	    form.attr('method', 'post');
	    form.appendTo('body');
	    form.append($('<input type="hidden" value="' + "asdasd" + '" name=exampleField1>'));
	    form.submit();
	  });
	});
</script>
</head>
<BODY>
<button class="exampleButton">전송</button>
</BODY>
</HTML>