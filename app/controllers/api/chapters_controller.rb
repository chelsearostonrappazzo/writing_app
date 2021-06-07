class Api::ChaptersController < ApplicationController
  def index
    @chapters = Chapter.where(story_id: params[:id])
    render "index.json.jb"
  end

  def show 
    @chapter = Chapter.find(params[:id])
    render "show.json.jb"
  end

  def create 
    story_id = params[:id]
    @chapter = Chapter.new(
      title: params[:title],
      content: params[:content],
      story_id: story_id
    )
    if @chapter.save
      render json: {message: "Chapter saved!"}
    else 
      render json: {errors: @chapter.errors.full_messages }, status: 406
    end
  end

  def update
    @chapter = Chapter.find(params[:id])
    @chapter.title = params[:title] || @chapter.title
    @chapter.content = params[:content] || @chapter.content
    if @chapter.save 
      render "show.json.jb"
    else
      render json: {errors: @chapter.errors.full_messages }, status: 406
    end
  end
end
