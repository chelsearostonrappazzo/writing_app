class Api::TeamsController < ApplicationController
  def index 
    @teams = current_user.teams
  end

  def show
    team_id = params[:id]
    @team = Team.find(id: team_id)
  end

  def create 
    @team = Team.new(
      name: params[:id]
    )
    if @team.save
      @user = current_user.id 
      @team.members.create!(team_id: @team.id, user_id: @user)  
    else 
      render json: {errors: @team.errors.full_messages }, status: 406
    end
  end

end
