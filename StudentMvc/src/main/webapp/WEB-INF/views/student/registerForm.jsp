<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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
					학생 등록
				</h2>
				<p>
					<a class="btn btn-primary btn-large" href="/student/list">학생 목록</a>
				</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form role="form" action="/student/register" method="post">
				<div class="form-group">
					 
					<label for="sno">
						학번
					</label>
					<input type="text" class="form-control" id="sno" name="sno" required/>
				</div>
				<div class="form-group">
					 
					<label for="sname">
						이름
					</label>
					<input type="text" class="form-control" id="sname" name="sname" required />
				</div>
				
				<div class="form-group">
					 
					<label for="syear" >
						학년
					</label>
					<select id="syear" name="syear">
						<option value="1" selected>1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
				
				<div class="form-group">
					 
					<label for="gender">
						성별
					</label>
					<input type="radio" name="gender" value="M" checked />남자
	 				<input type="radio" name="gender" value="F" /> 여자
				</div>
				
				<div class="form-group">
					 
					<label for="major">
						전공
					</label>
					<input type="text" class="form-control" id="major" name="major" />
				</div>
				
				<div class="form-group">
					 
					<label for="score">
						점수
					</label>
					<input type="number" min="0" max="100" class="form-control" id="score" name="score" />
				</div>
				
				<button type="submit" class="btn btn-primary">
					등록
				</button>
			</form>
		</div>
	</div>
</div>

</body>
</html>