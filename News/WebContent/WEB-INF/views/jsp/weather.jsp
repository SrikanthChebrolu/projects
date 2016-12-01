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
<link href="${bootstrapCss}" rel="stylesheet" />
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

<%-- <spring:url value="/resources/core/js/home.js" var="coreJs" /> --%>
<spring:url value="/resources/core/js/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>

<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.js"></script>

<spring:url value="/resources/core/js/weather.js" var="weatherJs" />
<script src="${weatherJs}"></script>
</head>
<body>
	<div class="container-fluid outerdiv">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/News"><b>SRIKANTH NEWS</b> <span
						class="span-style"></span></a>
					<ul class="nav navbar-nav">
						<li class="nav-item"><a class="nav-link" href="/News"><b>Home</b></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/News/news"><b>News</b></a>
						</li>
						<li class="nav-item active"><a class="nav-link"
							href="/News/weather"><b>Weather</b><span class="sr-only">(current)</span></a></li>
					</ul>
				</div>
			</div>
		</nav>

		<noscript>
			<div class="nojs">Javascript is either disabled or not
				supported in your browser. Please enable it or use a Javascript
				enabled browser.</div>
		</noscript>



	</div>

	<div layout="column" ng-app="autocompleteDemo" ng-controller="DemoCtrl" ng-cloak>
		<md-content class="md-padding">
		<form ng-submit="$event.preventDefault()">
			<p>
				Use
				<code>md-autocomplete</code>
				to search for matches from local or remote data sources.
			</p>
			<md-autocomplete ng-disabled="ctrl.isDisabled"
				md-no-cache="ctrl.noCache" md-selected-item="ctrl.selectedItem"
				md-search-text-change="ctrl.searchTextChange(ctrl.searchText)"
				md-search-text="ctrl.searchText"
				md-selected-item-change="ctrl.selectedItemChange(item)"
				md-items="item in ctrl.querySearch(ctrl.searchText)"
				md-item-text="item.display" md-min-length="0"
				placeholder="What is your favorite US state?"> <md-item-template>
			<span md-highlight-text="ctrl.searchText" md-highlight-flags="^i">{{item.display}}</span>
			</md-item-template> <md-not-found> No states matching
			"{{ctrl.searchText}}" were found. <a
				ng-click="ctrl.newState(ctrl.searchText)">Create a new one!</a> </md-not-found> </md-autocomplete>
			<br />


			<p>
				By default,
				<code>md-autocomplete</code>
				will cache results when performing a query. After the initial call
				is performed, it will use the cached results to eliminate
				unnecessary server requests or lookup logic. This can be disabled
				above.
			</p>
		</form>
		</md-content>
	</div>
</body>
</html>