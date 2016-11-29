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
        .then(function(response) {
          $scope.details = response.data;
        });
    }

    $scope.update = function(source) {
      $scope.search = source.Title;
    };

    $scope.select = function() {
      this.setSelectionRange(0, this.value.length);
    }
  });
