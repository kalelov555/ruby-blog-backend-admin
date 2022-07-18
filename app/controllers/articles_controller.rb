class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def admin_index
    @articles = Article.all
  end

  def admin_show
    @article = Article.find_by(slug: params[:slug])
  end

  def admin_new
    
  end

  def index
    articles = Article.all

    render json: ArticleSerializer.new(articles).serialized_json
  end

  def show 
    article = Article.find_by(slug: params[:slug])

    render json: ArticleSerializer.new(article).serialized_json
  end

  def create
    article = Article.create(article_params_create)

    if article.save
      redirect_to "/admin/articles"
    else
      render json: { error: article.errors.messages }, status: 422 
    end
  end

  def update
    article = Article.find_by(slug: params[:slug])

    if article.update(article_params)
      redirect_to "/admin/articles"
    else
      render json: { error: article.errors.messages }, status: 422 
    end
  end

  def destroy
    article = Article.find_by(slug: params[:slug])

    if article.destroy
      redirect_to "/admin/articles"
    else
      render json: { error: article.errors.messages }, status: 422 
    end
  end

  private 
  def article_params
    params.require(:article).permit(:title, :description, :visible, :images => [])
  end

  def article_params_create
    params.permit(:title, :description, :visible, :images => [])
  end
end
