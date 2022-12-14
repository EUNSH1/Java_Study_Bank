<%@page import="com.esh.start.bankbook.BankBookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%--  <%
    	BankBookDTO bankBookDTO = (BankBookDTO)request.getAttribute("test");
    %> --%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<style>
    .align-center {text-align: center;}

	input.img-button {
        background: url( "/resources/img/" ) no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
      }
</style>
</head>
<body>


	<c:import url="../template/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-4 mt-5">
		<div class="row">
	<h1>BANKBOOK DETAIL</h1>
	
	
	<table border="1"  class="table table-success table-striped">
		<thead>
			<tr>
				<th>NUM</th><th>NAME</th><th>RATE</th><th>SALE</th>
			</tr>
		</thead>
		<tbody>
				
			
				<tr>
					<td>${requestScope.test.bookNum}</td>
					<td>${requestScope.test.bookRate}</td>
					<td>${test.bookRate}</td>
					<td>
					</td>
					
				</tr>
			
			
		</tbody>
		
	</table>
	
	
	<div>
		<button type="button" class="btn btn-primary" onclick="location.href='./list.esh'">리스트보기</button>
		<c:if test="${not empty sessionScope.check}">
		<button type="button" class="btn btn-success" onclick="location.href='./update.esh?bookNum=${requestScope.test.bookNum}'">수정하기</button>
		<button type="button" class="btn btn-danger" onclick="location.href='./delete.esh?bookNum=${requestScope.test.bookNum}'">삭제하기</button>
		</c:if>
	</div>
	
	
	
	

	<c:if test="${not empty sessionScope.check}">
	<button type="button" class="btn btn-primary container-fluid col-lg-4 mt-5" onclick="location.href='../bankAccount/add.esh?bookNum=${test.bookNum}'">상품 가입하기</button>
	
	</c:if>

	<!-- COMMENT -->
	<div class="row">
		<div class="mb-3">
			<label for="writer" class="form-label">작성자</label>
			<input type="email" class="form-control" id="writer">
		  </div>
		  <div class="mb-3">
			<label for="contents" class="form-label">내용</label>
			<textarea class="form-control" id="contents" rows="3"></textarea>
		  </div>
		  <div class="mb-3">
			<button type="button" id="commentAdd" data-bookNum="${test.bookNum}">댓글작성</button>
		  </div>
	</div>

	<!-- COMMENT LIST 출력 -->
	<div>
		<table id="commentList" border="1" class="table table-warning table-striped">


		</table>

	</div>
	<button type="button" id="more" class="btn btn-danger align-center">더보기</button>

  
	  <!-- Modal -->
	  <button type="button" style="display: none;"class="btn btn-primary" id ="up" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Open modal for @getbootstrap</button>

		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Update</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
				<input type="hidden" id="num" value="">
				<div class="mb-3">
					<label for="updateWriter" class="col-form-label">writer</label>
					<input type="text" class="form-control" id="updateWriter">
				</div>
				<div class="mb-3">
					<label for="updateContents" class="col-form-label">contents</label>
					<textarea class="form-control" id="updateContents"></textarea>
				</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="update">수정하기</button>
			</div>
			</div>
		</div>
		</div>
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	

<script src="/resources/js/bankBookComment.js"></script>
</body>
</html>