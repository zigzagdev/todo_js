# frozen_string_literal: true

class BulletinBoardsController < ApplicationController

  def new
    @article=Article.new
  end

  def create
    @article=Article.new(article.params)
   if @article.save
      render action:  :index
   else
      render action: :new
  end

  def index
    @article=Article.all

  end

  def show
    @article
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def article_params
    params.permit()
  end
  end
end
