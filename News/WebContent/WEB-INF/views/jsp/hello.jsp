<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ASK-Sahayak News</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">ASK-Sahayak News</a>
		</div>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1>${title}</h1>
		<p>
			<c:if test="${not empty name}">
			Hello ${name}
		</c:if>

			<c:if test="${empty name}">
			Welcome Welcome!
		</c:if>
		</p>
		<p>
			<a class="btn btn-primary btn-lg" href="#" role="button">Learn
				more</a>
		</p>
	</div>
</div>

<div class="container">

	<div class="row">
		<div class="col-md-4">
			<div class="row">
				<div class="col-sm-12 col-md-10	">
					<div class="thumbnail">
						<img src="..." alt="...">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>...</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> <a
									href="#" class="btn btn-default" role="button">Button</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<h2>Heading</h2>
			<p>ABC</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Heading</h2>
			<p>ABC</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details</a>
			</p>
		</div>
	</div>

	<hr>
	<footer>
		<p>&copy; ASK-Sahayak</p>
	</footer>
</div>

<div id="json"></div>
<script>
        var obj = {"data": [
{
 "name": "Rehan",
 "location": "Pune",
 "description": "hello hi",
 "created_by": 13692,
 "users_name": "xyz",
},
{
  "name": "Sameer",
  "location": "Bangalore",
  "description": "how are you",
  "created_by": 13543,
  "users_name": "abc",
}
]}
var divId = document.getElementById("json")
for(var i=0;i<obj.data.length;i++)
for(var keys in obj.data[i]){
 console.log(keys +"-->"+obj.data[i][keys]);
 divId.innerHTML = divId.innerHTML + "<br/>"+ keys +"-->"+obj.data[i][keys];
}
</script>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>