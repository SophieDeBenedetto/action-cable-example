//= require cable
//= require_self
//= require_tree .

this.App = {};

App.cable = ActionCable.createConsumer("/cable");  