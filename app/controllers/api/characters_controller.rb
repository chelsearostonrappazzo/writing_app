class Api::CharactersController < ApplicationController
  def index
    @characters = Character.where(story_id: params[:id])
  end
end
