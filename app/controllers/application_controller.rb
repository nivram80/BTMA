class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_team

  def set_team
  	team = Team.find(params[:id])
  end
end
