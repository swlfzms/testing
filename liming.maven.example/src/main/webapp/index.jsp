<!DOCTYPE HTML>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf8"%>
<html>

<head>

<title>index</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">

<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript">
	function servletCheck() {
		$.post("/liming/servlet/TestServlet", {
			hi : "servlet"
		}, function(data, status) {
			if (status == "success")
				alert(data+" "+status);
			else
				alert("Sorry, something wrong......");
		});
	}
	
	function controllerCheck(){		
		$.post("/liming/HelloController/outPrinting", {
			hi : "controller"
		}, function(data, status) {
			if (status == "success")
				alert(data+" "+status);
			else
				alert("Sorry, something wrong......");
		});
	}
</script>

</head>

<body>
	
	<button type="button" onclick="servletCheck();">servletCheck</button>
	<button type="button" onclick="controllerCheck();">controllerCheck</button>
</body>

</html>