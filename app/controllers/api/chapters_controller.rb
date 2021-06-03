class Api::ChaptersController < ApplicationController
  def index
    @chapters = Chapter.find_by(story_id: params[:id])
  end
end
