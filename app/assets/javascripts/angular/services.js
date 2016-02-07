angular.module('pomodoroApp.services', [])
.factory('pomodoro', function(){

  var pomodoro = {}

  pomodoro.time = 25*60;

  pomodoro.reset = function() {
    pomodoro.time = 25*60;
  }

  pomodoro.updateTimer = function() {
    pomodoro.time -= 1;
    if (pomodoro.time == -1) {
      pomodoro.callback();
    }
  }

  return pomodoro;
})

.factory("Todo", function($resource) {
  return $resource("/api/todos/:id", {  }, {
    query: { method: "GET", isArray: false},
    update: { method: "PUT" }
  });
});
