class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def show
      @articles = Article.find(params[:id])
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(task_params)
      @article.save
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      @article.update(task_params)

      redirect_to task_path(@article)
    end

    def destroy
       @article = Article.find(params[:id])
       @article.destroy

       # no need for app/views/restaurants/destroy.html.erb
       redirect_to articles_path
     end



  private
    def article_params
    params.require(:article).permit(:title, :content)
    end

end
