myApp.controller('contractorsController', ['$scope','$http',
  function($scope, $http){
    $scope.message = "contractors controller ON";

    $http.get("/contractors.json")
    .then(function(response) {
        $scope.contractors = response.data;
        console.log($scope.jobsList);
    });

  }
]);
