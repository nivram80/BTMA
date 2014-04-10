class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :set_team

  def current_team
  	if session[:team_id]
  		@team ||= Team.find(session[:team_id])
  	end
  end

  def authorize
    if current_coach.nil?
      redirect_to :new_login
    end
  end

  def current_coach
    if session[:coach_id]
      @current_coach ||= Coach.find(session[:coach_id])
    end
  end
  
  def logged_in?
      current_coach != nil
  end
  
  helper_method :current_coach, :logged_in?, :current_team
end
