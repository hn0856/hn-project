<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ include file="/WEB-INF/views/student/bs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>
					학생 목록
				</h2>
				<p>
					<a class="btn btn-primary btn-large" href="/student/registerForm">학생 등록</a>
				</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
				
					<tr>
						<th>학번</th>
						<th>이름</th>
						<th>학년</th>
						<th>성별</th>
						<th>전공</th>
						<th>점수</th>
					</tr>
				
				</thead>
				<tbody>
				<c:forEach var="studentVo" items="${list}">
					<tr>
						<td><a href="/student/read?sno=${studentVo.sno}">${studentVo.sno}</a></td>
						<td>${studentVo.sname}</td>
						<td>${studentVo.syear}</td>
						<td>${studentVo.gender}</td>
						<td>${studentVo.major}</td>
						<td>${studentVo.score}</td>
						
					</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>


</body>
</html>