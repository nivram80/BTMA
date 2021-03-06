class LoginsController < ApplicationController

	def new
		@team = Team.new
		@coach = Coach.new
	end

	def create
		coach = Coach.find_by_email(params[:email])

		if coach && coach.authenticate(params[:password])
		  session[:coach_id] = coach.id
		  session[:team_id] = coach.team_id
		  
		  redirect_to ("/teams/#{session[:team_id]}")
		else
		  raise "Login Failed"

		  redirect_to :new_login
		end   
	end

	def show
	end

	def destroy
    session[:coach_id] = nil
    session[:team_id] = nil

    redirect_to :new_login
	end

end