<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/evo-calendar.css" />
<link rel="stylesheet" type="text/css" href="../resources/css/evo-calendar.midnight-blue.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div id="evoCalendar"></div>
	<script src="../resources/js/evo-calendar.js"></script>
	<script>
        $(document).ready(function() {
        	  $("#evoCalendar").evoCalendar({
        		    calendarEvents: [
        		      {
        		        id: 'bHay68s', // Event's ID (required)
        		        name: "New Year", // Event name (required)
        		        date: "January/1/2020", // Event date (required)
        		        type: "holiday", // Event type (required)
        		        everyYear: true // Same event every year (optional)
        		      },
        		      {
        		        name: "Vacation Leave",
        		        badge: "02/13 - 02/15", // Event badge (optional)
        		        date: ["February/13/2020", "February/15/2020"], // Date range
        		        description: "Vacation leave for 3 days.", // Event description (optional)
        		        type: "event",
        		        color: "#63d867" // Event custom color (optional)
        		      }
        		    ]
        		  });
        })
     </script>
</body>
</html>