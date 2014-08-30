class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(article_params)
		redirect_to "/articles"
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	protected

	def article_params
		params.require(:article).permit!
	end

end