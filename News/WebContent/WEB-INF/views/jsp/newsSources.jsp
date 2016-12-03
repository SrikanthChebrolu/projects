<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:url var="home" value="/" scope="request" />

<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />

<spring:url value="/resources/core/css/home.css" var="coreCss" />
<link href="${coreCss}" rel="stylesheet" />

<spring:url value="/resources/core/css/bootstrap-theme.css"
	var="bootstrapThemeCss" />
<link href="${bootstrapThemeCss}" rel="stylesheet" />

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
<body ng-app="myApp" ng-controller="NewsController">
	<div class="container-fluid outerdiv">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/News"><b>SRIKANTH NEWS</b> <span
						class="span-style"></span></a>
					<ul class="nav navbar-nav">
						<li class="nav-item "><a class="nav-link" href="/News"><b>Home</b>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/News/news"><b>News</b>
								<span class="sr-only">(current)</span> </a></li>
						<li class="nav-item active"><a class="nav-link"
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
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2" ng-repeat="x in sources">
						<div class="thumbnail">
							<img alt="Bootstrap Thumbnail First"
								style="height: 80px; width: 160px;"
								data-ng-src="{{x.urlsToLogos.small}}" href="{{x.url}}">
							<div class="caption">
								<h6>{{x.name}}</h6>
								<a class="label label-primary" href="{{x.url}}">Visit
									{{x.name}} website</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>