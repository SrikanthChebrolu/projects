'use strict';

angular.module('myApp', [])
  .controller('NewsController', function($scope, $http) {
    $scope.change = function(){
    	window.alert($scope.selectedname);
    	fetch();
    }

   // $scope.search = "abc-news-au";
    //$scope.names = ["abc-news-au", "ars-technica", "bbc-news"];
    $scope.selectedname
    
    function fetch() {
      $http.post("http://localhost:8080/News/news?source=" + $scope.selectedname)
        .success(function(data){
            $scope.articles = [];
            angular.forEach(data.articles, function(value, key) {
                $scope.articles.push(value);
            });
            $scope.isVisible = function(author){
                return true;// return false to hide this artist's albums
            };
        });
    }
  });
