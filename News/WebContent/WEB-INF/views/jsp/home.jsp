<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:url var="home" value="/" scope="request" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<spring:url value="/resources/core/css/home.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap-theme.css"
	var="bootstrapThemeCss" />
<link href="${bootstrapThemeCss}" rel="stylesheet" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<spring:url value="/resources/core/css/custom.css" var="customCss" />
<link href="${customCss}" rel="stylesheet" />

<spring:url value="/resources/core/js/jquery/jquery-1.x-git.min.js"
	var="jqueryJs" />
<script src="${jqueryJs}"></script>

<spring:url value="/resources/core/js/jquery/1.11.2/jquery.min.js"
	var="jqueryJs1" />
<script src="${jqueryJs1}"></script>

<spring:url value="/resources/core/js/angularjs/1.5.9/angular.min.js"
	var="angularJs"></spring:url>
<script src="${angularJs}"></script>

<spring:url value="/resources/core/js/home.js" var="coreJs" />
<script src="${coreJs}"></script>

<spring:url value="/resources/core/js/bootstrap.min.js"
	var="bootstrapJs" />
<script src="${bootstrapJs}"></script>

</head>
<body ng-app="myApp">
	<div class="container-fluid outerdiv" ng-controller="NewsController">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/News"><b>SRIKANTH NEWS</b> <span
						class="span-style"></span></a>
					<ul class="nav navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="/News"><b>Home</b>
								<span class="sr-only">(current)</span> </a></li>
						<li class="nav-item"><a class="nav-link" href="/News/news"><b>News</b></a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="/News/newsSources"><b>News Sources</b></a></li>
					</ul>
				</div>
			</div>
		</nav>
		<noscript>
			<div class="nojs">Javascript is either disabled or not
				supported in your browser. Please enable it or use a Javascript
				enabled browser.</div>
		</noscript>
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="" alt="" style="width: 304px; height: 200px;">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-3">
								<h1 class="mbr-section-title display-1">SRIKANTH NEWS</h1>
								<p class="mbr-section-lead lead">Get the live news from
									almost 60 different Sources</p>

								<div class="mbr-section-btn">
									<a class="btn btn-lg btn-danger"
										href="http://localhost:8080/News/news"> News</a> <a
										class="btn btn-lg btn-info"
										href="http://localhost:8080/News/newsSources">News Sources</a>
								</div>
							</div>
						</div>
					</div>
					<img src="" alt="" style="width: 304px; height: 200px;">
					<div class="carousel-caption">
						<h3>News</h3>
					</div>
				</div>
				<div class="item">
					<img src="" alt="" style="width: 304px; height: 200px;">
					<div class="container-slide container">
						<div class="row">
							<div class="col-md-8 col-md-offset-3">
								<h1 class="mbr-section-title display-1">SRIKANTH NEWS</h1>
								<p class="mbr-section-lead lead">Get the live news from
									almost 60 different Sources</p>

								<div class="mbr-section-btn">
									<a class="btn btn-lg btn-danger"
										href="http://localhost:8080/News/news"> News</a> <a
										class="btn btn-lg btn-info"
										href="http://localhost:8080/News/newsSources">News Sources</a>
								</div>
							</div>
						</div>
					</div>
					<img src="" alt="" style="width: 304px; height: 200px;">
					<div class="carousel-caption">
						<h3>News Sources</h3>
					</div>
				</div>
				<div class="item">
					<img src="" alt="" style="width: 304px; height: 200px;">
					<div class="container-slide container">
						<div class="row">
							<div class="col-md-8 col-md-offset-3">
								<h1 class="mbr-section-title display-1">SRIKANTH NEWS</h1>
								<p class="mbr-section-lead lead">Get the live news from
									almost 60 different Sources</p>
								<div class="mbr-section-btn">
									<a class="btn btn-lg btn-danger"
										href="http://localhost:8080/News/news"> News</a> <a
										class="btn btn-lg btn-info"
										href="http://localhost:8080/News/newsSources">News Sources</a>
								</div>
							</div>
						</div>
					</div>
					<img src="" alt="" style="width: 304px; height: 200px;">
					<div class="carousel-caption">
						<h3>News</h3>
					</div>
				</div>
			</div>
			<!-- Controls -->
			<a data-app-prevent-settings class="left carousel-control"
				href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="icon-prev" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a data-app-prevent-settings class="right carousel-control"
				href="#carousel-example-generic" role="button" data-slide="next">
				<span class="icon-next" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>