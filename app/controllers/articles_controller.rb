class ArticlesController < ApplicationController
  def index
    @articles = Article.all.reverse
  end

  def dashboard
    if User.find_by(password: params[:password]).admin == true
      @article = Article.new
    else
      redirect_to root_path
    end
  end
    
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, notice: 'wena wena!'
    else
      render :dashboard, notice: 'no hay mano'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :image, :content)
  end
end
