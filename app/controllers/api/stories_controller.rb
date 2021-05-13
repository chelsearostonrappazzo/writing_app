class Api::StoriesController < ApplicationController
  def index 
    @stories = Story.all 
    render "index.json.jb"
  end

  def show 
    @story = Story.find(params[:id])
    render" show.json.jb"
  end

  def create 
    @story = Story.new(
      title: params[:title],
      description: params[:description],
      user_id: current_user.id,
    )
    #happy/sad path
    if @story.save 
      render json: {message: "Success"}
    else 
      render json: {errors: @story.errors.full_messages }, status: 406
    end
  end

  def update 
    @story = Story.find(params[:id])
    @story.title = params[:title] || @story.title
    @story.description = params[:description] || @story.description
    if @story.save 
      render "show.json.jb"
    else
      render json: {errors: @story.errors.full_messages }, status: 406
    end
  end

  def destroy 
    @story = Story.find(params[:id])
    @story.destory 
    render json: {message: "Deleted!"}
  end
end
