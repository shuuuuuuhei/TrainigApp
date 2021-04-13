class ArticlesController < ApplicationController
    before_action :authenticate_user!


    #記事を表示
    def index
        @articles = current_user.articles.all
    end

    def new
        @article = current_user.articles.build
    end

    def edit
        @article = Article.find(params[:id])
    end

    def show
        @article = Article.find(params[:id])
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
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to articles_path, notice: '更新できました'
        else
            flash.now[:error] = '保存できませんでした'
            render :new
        end
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
            :content,
            images: []
        )
    end

end