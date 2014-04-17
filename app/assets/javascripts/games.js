$(document).ready(function() {
  $('.add_pitcher_stats').hide();
  $('.add_pitcher_link').click(function() {
  	$('.add_pitcher_stats').show();
  	$('.add_pitcher_link').hide();
  });
  
  $('.add_batter_stats').hide();
  $('.add_batter_link').click(function() {
  	$('.add_batter_stats').show();
  	$('.add_batter_link').hide();
  });
});