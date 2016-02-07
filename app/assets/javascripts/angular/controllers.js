pomodoroApp.controller('TodoShowController', function($scope, pomodoroAPIService, $interval, $location){

  // $scope.todo = [];
  // var pomodoroDuration = 25*60;
  // $scope.minutes = '25';
  // $scope.seconds = '00';
  // var timer;
  // // var timerOn;
  // pomodoroDuration = 5;
  // // var promise;
  //
  // pomodoroAPIService.getTodo($location.path()).success(function(response){
  //   $scope.todo = response["todo"];
  // });
  //
  // this.startPomodoro = function() {
  //   timer = $interval(updateTimeDisplay,1000);
  //   timerOn = true;
  // }
  //
  // updateTimeDisplay = function() {
  //   if (pomodoroDuration==-1) {
  //     debugger;
  //     endPomodoro();
  //     return;
  //   }
  //   $scope.minutes = parseInt(pomodoroDuration/60);
  //   $scope.seconds = parseInt((pomodoroDuration-$scope.minutes*60)%60);
  //   if ($scope.seconds < 10) { $scope.seconds = '0'+$scope.seconds; }
  //   // return (function() {
  //   //   if (!timerOn) {
  //   //     alert("Time's up!")
  //   //     $interval.cancel(timer);
  //   //   }
  //   // })();
  //   pomodoroDuration -= 1;
  // };
  //
  // endPomodoro = function() {
  //   alert("Time's up!")
  //   $interval.cancel(timer);
  //   // pomodoroAPI.incrementPomodoro()
  // }


  //
  // this.createTodo = function() {
  //   pomodoroAPIService.createTodo(this.todoTitle)
  //   .success(function(response){
  //     $scope.todos = response["todos"];
  //   });
  //   this.todoTitle = "";
  // };
  //
  // this.deleteTodo = function(id) {
  //   pomodoroAPIService.deleteTodo(id)
  //   .success(function(response){
  //     $scope.todos = response["todos"];
  //   });
  // };

});
