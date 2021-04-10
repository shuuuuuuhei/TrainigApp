class ArticlesController < ApplicationController
    before_action :authenticate_user!


    #view
    def index

    end

    def new

    end

    def edit

    end

    #DBを操作
    def create

    end

    def update

    end

    def delete

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