class Api::CommentsController < ApplicationController
  protect_from_forgery :except => [:create]
  # test
  # test2
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    Comment.create(author: params[:author], text: params[:text])
  end
end
