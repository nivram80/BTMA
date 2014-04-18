$(document).ready(function() {

	$('.new_team').hide();
	$('.new_team_link').click(function() {
  	$('.login_container').hide();
  	$('.new_team').show();
  	$('.new_team_link').hide();
  	$('.new_team_link_head').hide();
  });

	$('.new_player').hide();
	$('.new_player_link').click(function() {
  	$('.login_container').hide();
  	$('.new_player').show();
  	$('.new_player_link').hide();
  });

});
