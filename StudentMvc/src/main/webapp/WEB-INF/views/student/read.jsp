<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ include file="/WEB-INF/views/student/bs.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
$(function () {
	$("#btnRemove").click(function () {
		$("#frmRemove").submit();
	});
	
});

</script>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>
					상세화면
				</h2>
				<p>
					<a class="btn btn-primary btn-large" href="/student/list">학생 목록</a>
				</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form role="form" action="/student/modify" method="post">
				<div class="form-group">
					 
					<label for="sno">
						학번
					</label>
					<input type="text" class="form-control" id="sno" name="sno" value="${vo.sno}" readonly/>
				</div>
				<div class="form-group">
					 
					<label for="sname">
						이름
					</label>
					<input type="text" class="form-control" id="sname" name="sname" value="${vo.sname}" />
				</div>
				
				<div class="form-group">
					 
					<label for="syear" >
						학년
					</label>
					<select id="syear" name="syear" >
						<option value="1" <c:if test="${vo.syear =='1'}">selected</c:if>>1</option>
						<option value="2" <c:if test="${vo.syear =='2'}">selected</c:if>>2</option>
						<option value="3" <c:if test="${vo.syear =='3'}">selected</c:if>>3</option>
						<option value="4" <c:if test="${vo.syear =='4'}">selected</c:if>>4</option>
						
					</select>
				</div>
				
				<div class="form-group">
					 
					<label for="gender">
						성별
					</label>
					<input type="radio" name="gender" value="M"  <c:if test="${vo.gender == 'M'}">checked</c:if>> 남자
	 				<input type="radio" name="gender" value="F" <c:if test="${vo.gender == 'F'}">checked</c:if>> 여자
	 				
				</div>
				
				<div class="form-group">
					 
					<label for="major">
						전공
					</label>
					<input type="text" class="form-control" id="major" name="major" value="${vo.major}" />
				</div>
				
				<div class="form-group">
					 
					<label for="score">
						점수
					</label>
					<input type="number" class="form-control" id="score" name="score" value="${vo.score}" />
				</div>
				
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="button" class="btn btn-primary" id="btnRemove">삭제</button>				
			</form>
			
			<form action="/student/remove" method="post" id="frmRemove">
				<input type="hidden" name="sno" value="${vo.sno}">
			
			</form>
		</div>
	</div>
</div>
</body>
</html>