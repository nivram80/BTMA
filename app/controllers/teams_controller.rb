class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @players = Player.where(team_id: params[:id])
    @coaches = Coach.where(team_id: params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(params[:team])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes(params[:team])
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end
end
