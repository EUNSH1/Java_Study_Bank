<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Kakao 지도 시작하기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<style>
    .align-center {text-align: center;}
</style>
<body>
	
	<c:import url="../template/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-4 mt-5">
		<div class="row">

	<div>
		<h1>KAKAO Develop Map</h1>
	</div>
	<div id="map" style="width:500px;height:400px;">
	</div>




		</div>
	
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=045625b0e818d703911adc0561bea4f6">
</script>
<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.3911, 126.9509),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>