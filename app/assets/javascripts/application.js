// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-sprockets
//= require angular/angular
//= require angular-ui-router/release/angular-ui-router
//= require_self
//= require angular-sanitize
//= require angular-rails-templates
//= require ng-app/app
//= require_tree ./ng-app/templates
//= require_tree ./ng-app/modules
//= require_tree ./ng-app/filters
//= require_tree ./ng-app/directives
//= require_tree ./ng-app/models
//= require_tree ./ng-app/services
//= require_tree ./ng-app/controllers

var app = angular.module('catalyst', ['ui.router']);
