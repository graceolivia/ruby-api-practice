class YarnsController < ApplicationController
    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(name: "...", weight: "...", fiber: "...", yardage: "...")

      if @article.save
        redirect_to @article
      else
        render :new, status: :unprocessable_entity
      end
    end
end
