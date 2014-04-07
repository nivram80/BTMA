class LoginsController < ApplicationController

	def new
	end


	def create
		player = Player.find_by_email(params[:email])

		if player && player.authenticate(params[:password])
		  session[:player_id] = user.id # creates a session variable available until browser window is closed
		  redirect_to :root
		else
		  raise "Login Failed"
		end   
	end


def destroy
     session[:player_id] = nil
     redirect_to :root
end

end