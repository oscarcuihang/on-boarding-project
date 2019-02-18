(function(){
  angular
  .module("on-boarding", ["ngResource"])
  .controller("user_controller", ["$resource", UserController]);

  function UserController($resource){
    var vm = this;

    var User = $resource("/users/:id.json", {}, {
      update: {method: "PUT"}
    });

    vm.data = User.query(function(response){
      vm.data.forEach(function(user){
        user.uuid = user.id.$oid;
      });
    });

    vm.destroy = function(user){
      debugger;

      User.remove({id: user.uuid}, function(response){
        if(response.success) {
          console.log('delete success');
        }
      });
    }

    vm.new_user = {};
    vm.create = function(){
      User.save(vm.new_user, function(response){
        response.cost = parseFloat(response.cost);
        vm.data.push(response);
        vm.new_user = {};
      });
    }

    vm.update = function(user){
      User.update({id: user.id.$oid}, user, function(response){
        console.log("User updated!");
      });
    }
  }
})();