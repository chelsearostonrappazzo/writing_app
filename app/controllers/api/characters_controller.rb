class Api::CharactersController < ApplicationController
  def index
    @characters = Character.where(story_id: params[:id])
  end

  def show 
    @characters = Character.find(params[:id])
    render "show.json.jb"
  end
end
