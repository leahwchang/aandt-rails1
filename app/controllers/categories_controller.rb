class CategoriesController < ApplicationController
	
	def show
		@category = Category.includes(:pages).find params[:id]
	end

	def index
    @categories = Category.all
  end

end
