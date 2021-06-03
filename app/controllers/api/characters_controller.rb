class Api::CharactersController < ApplicationController
  def index
    @characters = Character.find_by(story_id: params[:id])
  end
end
