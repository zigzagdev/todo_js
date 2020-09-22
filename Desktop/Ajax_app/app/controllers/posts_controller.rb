# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts= Post.all.order(id: "desc")
  end

  #def new
  #end

  def create
    @post.create(content: params[:content])
    redirect_to action: :index
  end

  def edit

  end
end
