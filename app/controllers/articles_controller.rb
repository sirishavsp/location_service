class ArticlesController < ApplicationController
  protect_from_forgery except: :index

	def index
		@articles = Article.all
		render json: @articles 

	end

	def new
		@article = Article.new
	    render json: @articles 

	end

	def show
		@article = Article.find(params[:id])
	end
	 
	def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
	      format.json { render json: @articles }
      else
          format.html { render action: 'new' }


      end
    end
  end
	private
		def article_params
			params.require(:article).permit(:lat, :lon)
		end
end
