class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: params[:article][:title])
    render json: @article
  end

  def index 
    @articles = Article.all
    render json: @articles
  end

  def show 
    @article = Article.find(params[:id])
    render json: @article
  end
end
