class TagsController < ApplicationController
  def index
    tags = Tag.all
  end
  def show
    tag = Tag.find(params[:id])
    questions = tag.questions.order(created_at: :desc)
  end
end