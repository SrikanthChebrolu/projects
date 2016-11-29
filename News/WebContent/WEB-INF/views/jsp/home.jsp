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

<spring:url value="https://code.jquery.com/jquery-1.x-git.min.js"
	var="jqueryJs" />
<script src="${jqueryJs}"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<spring:url
	value="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.9/angular.min.js"
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
					<a class="navbar-brand" href="/News"><b>ASK-Sahayak</b> <span
						class="span-style">News</span></a>
				</div>
			</div>
		</nav>

		<noscript>
			<div class="nojs">Javascript is either disabled or not
				supported in your browser. Please enable it or use a Javascript
				enabled browser.</div>
		</noscript>

		<div class="animated zoomInRight">
			<div class="input-group search-bar">
				<%-- <input type="text" ng-model="search"
					ng-model-options="{ debounce: 800 }" onclick="select()"
					class="form-control" placeholder="Enter full movie name" autofocus />--%>
				<select ng-model="selectedname" ng-model-options="{ debounce: 800 }"
					class="form-control" placeholder="Enter full movie name"
					ng-change="change()" autofocus>
					<option value="abc-news-au">ABC NEWS AU</option>
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

				<%-- <span class="input-group-addon bar-style"><i
					class="glyphicon glyphicon-search"></i></span>--%>
			</div>
		</div>
		<%-- <div id="main-info" class="col-md-12">
			<div class="col-md-4" ng-repeat="x in articles">
				<div>{{ x.author }}</div>
				<div>{{x.title}}</div>
				<div>{{x.description}}</div>
				<div>{{ x.url }}</div>
				<img src={{x.urlToImage}} alt="Description" />

				<div>{{ x.publishedAt }}</div>
				<div>{{ x.additionalProperties }}</div>
			</div>
		</div> --%>
		<div class="col-md-12">
			<div class="col-md-6" ng-repeat="x in articles">
				<img href="{{ x.url }}" ng-src="{{x.urlToImage}}"
					class="thumbnail animated flip movie-poster"> <span
					class="span-outer"> <a href="{{ x.url }}" target="_blank">{{x.title}}</a>
				</span>
				<p class="outer-p">
				<div class="inner-p">
					<span class="label label-primary">Author :</span> {{x.author}}
				</div>
				<div class="inner-p">
					<span class="label label-primary">Published At :</span> {{
					x.publishedAt}}
				</div>
				<div class="inner-p">
					<span class="label label-primary">Description :</span> {{x.description}}
				</div>
				</p>
			</div>
		</div>
	</div>
</body>
</html>