app.controller('UsersEditController', [
  '$scope',
  '$resource',

  function($scope, $resource){
    $scope.message1 = 'I come from the angular controller!';
    // $http.get('/users.json').then(function(res){
    //   console.log(res.data);
    //   $scope.user = res.data;
    // });
    var vm = this;
    var User = $resource('/users/:id.json', {id: '@id'}, {
     update: { method: 'PUT' }
    });
    vm.users = User.query();
    debugger;
 }]);
