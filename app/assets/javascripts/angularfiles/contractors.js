myApp.controller('contractorsController', ['$scope','$http',
  function($scope, $http){

    $http.get("/contractors.json")
    .then(function(response) {
        $scope.contractors = response.data;
    });

    $( ".target" ).change(function() {
      var code = $( ".target" ).val();
      var badUrlPath = "https://api.postcodes.io/postcodes/";
      var validate = "/validate"
      var autocomplete = "/autocomplete"
      console.log(code);

      $http.get(badUrlPath + code + validate)
      .then(function(response) {
          $scope.postCode = response.data;
          console.log($scope.postCode);

          if ($scope.postCode.result == true) {

            $http.get(badUrlPath + code)
            .then(function(response) {
                $scope.postCode = response.data;
                console.log($scope.postCode);
                $( "#contractor_city" ).val($scope.postCode.result.european_electoral_region);
                $( "#contractor_county" ).val($scope.postCode.result.parliamentary_constituency);

            });
          };

      });




    });

  }
]);
