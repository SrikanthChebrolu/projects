'use strict';

angular.module('myApp', []).controller(
		'NewsController',
		function($scope, $http) {
			sources();
			$scope.change = function() {
				fetch();
			}

			function sources() {
				$http.get("http://localhost:8080/News/sources").success(
						function(sourcesData) {
							$scope.sources = [];
							angular.forEach(sourcesData.sources, function(
									value, key) {
								$scope.sources.push(value);
								// window.alert(value);
							});
							$scope.isVisible = function(id) {
								return true;// return false to hide this artist's albums
							};
						});
			}

			function fetch() {
				$http.post(
						"http://localhost:8080/News/newsList?source="
								+ $scope.selectedname).success(function(data) {
					$scope.articles = [];
					angular.forEach(data.articles, function(value, key) {
						$scope.articles.push(value);
					});
					$scope.isVisible = function(author) {
						return true;// return false to hide this artist's albums
					};
				});
			}
		});
