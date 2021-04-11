class ArticlesController < ApplicationController
    before_action :authenticate_user!


    #view
    def index
        @articles = current_user.articles.all
    end

    def new
        @article = current_user.articles.build
    end

    def edit

    end

    #DBを操作
    def create
        @article = current_user.articles.build(article_params)
        if @article.save
            redirect_to root_path, notice: '保存できたよ！'
        else
            flash.now[:error] = '保存に失敗しました'
        end
    end

    def update

    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy!
        redirect_to root_path, notice: '削除しました'
    end

    #strong parameter
    private
    def article_params
        params.require(:article).permit(
            :title,
            :content
        )
    end

end