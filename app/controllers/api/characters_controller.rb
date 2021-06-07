class Api::CharactersController < ApplicationController
  def index
    @characters = Character.where(story_id: params[:id])
  end

  def show 
    @characters = Character.find(params[:id])
    render "show.json.jb"
  end

  def create 
    story_id = params[:id]
    @character = Character.new(
      name: params[:name],
      age: params[:age],
      description: params[:description],
      story_id: story_id
)
    if @character.save
      render json: {message: "Character saved!"}
    else 
      render json: {errors: @character.errors.full_messages }, status: 406
    end
  end
end
