class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    Article.new
  end

  def edit
  end


  def create
    @article = Article.new(params_article)
  end

  private

  def params_article
    params.require(:article).permit(:title, :content)
  end
end
