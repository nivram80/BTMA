class CoachesController < ApplicationController

	def show
    @coach = Coach.find(params[:id])
  end

  def new
    @coach = Coach.new
  end

  def create
    @coach = Coach.new(params[:coach])
    @team = Team.find(params[:coach][:team_id])
    
    if @coach.save
      session[:coach_id] = @coach_id
      redirect_to ("/teams/#{params[:coach][:team_id]}")
    else
      render "new"
    end
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def update
    @coach = Coach.find(params[:id])
    @coach.update_attributes(params[:coach])

    redirect_to ("/teams/#{params[:coach][:team_id]}")
  end

  def destroy
    @coach = Coach.find(params[:id])
    @coach.destroy
  end

end