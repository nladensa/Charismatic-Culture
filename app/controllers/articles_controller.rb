class ArticlesController < ApplicationController
    def index
        if params[:search].blank?
            @articles = Article.all
        else
            @parameter = params[:search].downcase
            @articles = Article.all.where("lower(text) LIKE :search", search: "%#{@parameter}%")
        end
        if not params[:sort].blank?
            @articles = @articles.order("created_at #{params[:sort]}")
        end
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
        @article.user = current_user
        
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        
        redirect_to articles_path
    end
    
    def favorite(article)
       favorites.find_by(article_id: article.id).present? 
    end
end

private
    def article_params
      params.require(:article).permit(:title, :text, :image, :search, :sort)
    end