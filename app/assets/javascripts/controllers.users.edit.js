(function(){
  angular
  .module("on-boarding", ["ngResource"])
  .controller("user_edit_controller", ["scope", "$resource", "$http", UserEditController]);

  function UserEditController($resource, $http, $scope){
    var vm = this;
    $http.get('/users/:id.json').then(function(res){
      console.log(res.data);
      vm.users = res.data;
      debugger;
    });
  }
})();