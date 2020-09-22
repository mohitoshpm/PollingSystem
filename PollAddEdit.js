
pollingApp.controller('PollAddEditCtrl', function ($scope, $http) {

$scope.ErrorMsg = "";
$scope.HasError = false;
$scope.HasViewPermission = false;

$scope.SelectedPoll=[];


$scope.GetPollById = function(id) {
    
    $http({
        
        method: 'GET',
        url: './api/poll/GetPoll.php?id='+id
        
    }).then(function (response) {
        
        // on success
        $scope.result = response.data;
        $scope.SelectedPoll= $scope.result.data;

        //$scope.GetNewPollOption
        console.log($scope.GetNewPollOption());

        $scope.SelectedPoll.OptionList.push($scope.GetNewPollOption());
        console.log($scope.SelectedPoll);
    
        
    }, function (response) {
        
        // on error
        console.log(response.data,response.status);
        
    });
};


$scope.AddOption=function(){
    if($scope.SelectedPoll.OptionList!=undefined){
        $scope.SelectedPoll.OptionList.push($scope.GetNewPollOption());
    }
    
}

$scope.GetPollListByUserId = function() {
    $http({
        
        method: 'GET',
        url: './api/poll/GetPollListByUserId.php'
        
    }).then(function (response) {
        
        // on success
        $scope.result = response.data;
        $scope.pollList= $scope.result.data;
        console.log($scope.pollList);
        
    }, function (response) {
        
        // on error
        console.log(response.data,response.status);
        
    });
};

$scope.EditPoll = function(row) {
    $scope.SelectedPoll=row;
};




$scope.SavePoll = function() {
    $http({
        
         method: 'POST',
         url:  './api/poll/SavePoll.php',
         data: $scope.SelectedPoll
         
    }).then(function (response) {// on success
      
        $scope.result = response.data;

        
        $scope.SelectedPoll.Id= $scope.result.data;
        
        console.log($scope.result);
        $scope.GetPollListByUserId();
      
    }, function (response) {
        
         console.log(response.data,response.status);
         
    });
};




 $scope.GetNewPollOption = function(){
     var pollOption ={
    "Id": 0,
    "PollId": 0,
    "Name": "",
    "OrderNo": 1,
    "ImageId": "null",
    "PollCount": 0
     };

     return pollOption;
  }


$scope.Init = function ()
{
    $scope.GetPollListByUserId();

};

});
