(function() {
  "use strict";
 
  angular.module("app").controller("cancersCtrl", function($scope, $http){


  	$scope.fetchData = function(){
  		$http.get("/api/v1/cancers.json").then(function(response){
  			$scope.cancers = response.data;
  		});
  	};



  	$scope.addNewCancer = function(newCancerType, newAgeOfDiagnosis, newPatientId)
  	{
  		var cancer = {
  			cancer_type: newCancerType,
  			age_of_diagnosis: newAgeOfDiagnosis,
  			patient_id: newPatientId
  		};

  		$http.post("/api/v1/cancers.json", cancer).then(function(response){
  			// $scope.cancers = response.data;
  			$scope.cancers.push(cancer);
			  		$scope.newCancerType = "";
			  		$scope.newAgeOfDiagnosis = "";
			  		$scope.errors = null;
  		});
  	};

  });
}());