$(document).ready(function() {

  // Login page new team
  $('.no_add_team').hide();
	$('.new_team').hide();
	$('.new_team_link').click(function() {
  	$('.login_container').hide();
  	$('.new_team').show();
  	$('.new_team_link').hide();
  	$('.new_team_link_head').hide();
    $('.no_add_team').show();
  });

  $('.no_add_team').click(function() {
    $('.login_container').show();
    $('.new_team').hide();
    $('.new_team_link').show();
    $('.new_team_link_head').show();
    $('.no_add_team').hide();
  });

  // Team page new player
	$('.no_add_player').hide();
	$('.new_player').hide();
	$('.new_player_link').click(function() {
  	$('.new_player').show();
  	$('.new_player_link').hide();
  	$('.no_add_player').show();
  });

  $('.no_add_player').click(function() {
  	$('.new_player').hide();
  	$('.new_player_link').show();
  	$('.no_add_player').hide();
  });

  // Team page new coach
	$('.no_add_coach').hide();
  $('.new_coach').hide();
	$('.new_coach_link').click(function() {
  	$('.new_coach').show();
  	$('.new_coach_link').hide();
  	$('.no_add_coach').show();
  });

	$('.no_add_coach').click(function() {
  	$('.new_coach').hide();
  	$('.new_coach_link').show();
  	$('.no_add_coach').hide();
  });

});
