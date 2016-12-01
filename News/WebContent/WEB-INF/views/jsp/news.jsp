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

<spring:url value="/resources/core/js/home.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${coreJs}"></script>
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
						<li class="nav-item "><a class="nav-link" href="/News"><b>Home</b>
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="/News/news"><b>News</b> <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/News/weather"><b>Weather</b></a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<noscript>
			<div class="nojs">Javascript is either disabled or not
				supported in your browser. Please enable it or use a Javascript
				enabled browser.</div>
		</noscript>

		<div id="main-info" class="col-md-12">
			<h4>Please select the News Source</h4>

			<div class="animated zoomInRight">
				<div class="input-group search-bar">
					<select ng-model="selectedname"
						ng-model-options="{ debounce: 800 }" class="form-control"
						placeholder="Enter full movie name" ng-change="change()" autofocus>
						<option selected="selected" value="abc-news-au">ABC NEWS AU</option>
						<option value="ars-technica">ARS TECHNICA</option>
						<option value="associated-press">ASSOCIATED PRESS</option>
						<option value="bbc-news">BBC NEWS</option>
						<option value="bbc-sport">BBC SPORT</option>
						<option value="ars-technica">BILD</option>
						<option value="bloomberg">BLOOMBERG</option>
						<option value="business-insider">BUSINESS INSIDER</option>
						<option value="business-insider-uk">BUSINESS INSIDER UK</option>
						<option value="buzzfeed">BUZZFEED</option>
						<option value="cnbc">CNBC</option>
						<option value="cnn">CNN</option>
						<option value="daily-mail">DAILY MAIL</option>
						<option value="der-tagesspiegel">DER TAGESSPIEGEL</option>
						<option value="die-zeit">DIE ZEIT</option>
						<option value="engadget">ENGADGET</option>
						<option value="entertainment-weekly">ENTERTAINMENT WEEKLY</option>
						<option value="espn">ESPN</option>
						<option value="espn-cric-info">ESPN CRIC INFO</option>
						<option value="focus">FOCUS</option>
						<option value="football-italia">football italia</option>
						<option value="fortune">fortune</option>
						<option value="four-four-two">FOUR FOUR TWO</option>
						<option value="fox-sports">FOX SPORTS</option>
						<option value="google-news">GOOGLE NEWS</option>
						<option value="gruenderszene">GRUENDERSZENE</option>
						<option value="hacker-news">HACKER NEWS</option>
						<option value="handelsblatt">HANDELSBLATT</option>
						<option value="ign">IGN</option>
						<option value="independent">INDEPENDENT</option>
						<option value="mashable">MASHABLE</option>
						<option value="metro">METRO</option>
						<option value="mirror">MIRROR</option>
						<option value="mtv-news">MTV NEWS</option>
						<option value="mtv-news-uk">MTV NEWS UK</option>
						<option value="national-geographic">NATIONAL GEOGRAPHIC</option>
						<option value="new-scientist">NEW SCIENTIST</option>
						<option value="newsweek">NEWSWEEK</option>
						<option value="new-york-magazine">NEW YORK MAGAZINE</option>
						<option value="nfl-news">NFL NEWS</option>
						<option value="polygon">POLYGON</option>
						<option value="recode">RECODE</option>
						<option value="reddit-r-all">REDDIT R ALL</option>
						<option value="reuters">REUTERS</option>
						<option value="sky-news">SKY NEWS</option>
						<option value="sky-sports-news">SKY SPORTS NEWS</option>
						<option value="spiegel-online">SPIEGEL ONLINE</option>
						<option value="t3n">T3N</option>
						<option value="talksport">TALKSPORT</option>
						<option value="techcrunch">TECHCRUNCH</option>
						<option value="the-economist">THE ECONOMIST</option>
						<option value="the-guardian-au">THE GUARDIAN AU</option>
						<option value="the-guardian-uk">THE GUARDIAN UK</option>
						<option value="the-hindu">THE HINDU</option>
						<option value="the-huffington-post">THE HUFFINGTON POST</option>
						<option value="the-lad-bible">THE LAD BIBLE</option>
						<option value="the-new-york-times">THE NEW YORK TIMES</option>
						<option value="the-next-web">THE NEXT WEB</option>
						<option value="the-sport-bible">THE SPORT BIBLE</option>
						<option value="the-telegraph">THE TELEGRAPH</option>
						<option value="the-times-of-india">THE TIMES OF INDIA</option>
						<option value="the-verge">THE VERGE</option>
						<option value="the-wall-street-journal">THE WALL STREET
							JOURNAL</option>
						<option value="the-washington-post">THE WASHINGTON POST</option>
						<option value="time">TIME</option>
						<option value="usa-today">USA TODAY</option>
						<option value="wired-de">WIRED DE</option>
						<option value="wirtschafts-woche">WIRTSCHAFTS WOCHE</option>
					</select>
				</div>
			</div>
			<div id="main-info" class="col-md-12">
				<h6>Todays {{$scope.selectedname}} news...</h6>

				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6 col-lg-4" ng-repeat="x in articles">
								<div class="thumbnail">
									<div class="page-header">
										<h4>
											<b> <a href="{{ x.url }}" target="_blank">{{x.title}}</a></b>
										</h4>
									</div>
									<div class="inner-p">
										<img style="height: 110px; width: 150;"
											data-ng-src="{{x.urlToImage}}"
											class="thumbnail animated flip movie-poster"
											href="{{ x.url }}">
									</div>
									<p class="outer-p">
									<div class="inner-p">
										<span class="label label-primary">Description :</span>
										<p>{{x.description}}</p>
									</div>
									<div class="inner-p">
										<span class="label label-primary">Author :</span> {{x.author}}
									</div>
									<div class="inner-p">
										<span class="label label-primary">Published At :</span> {{
										x.publishedAt}}
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>