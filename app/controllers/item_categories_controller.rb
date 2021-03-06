class ItemCategoriesController < ApplicationController

	def index
		@item_categories = ItemCategory.all
	end

	def new
		@item = ItemCategory.new
	end

	def create
		@item = ItemCategory.new(item_category_params)
    	if @item.save
      		redirect_to :action => 'index'
    	else
      		@errors = @item.errors
      		render :new
    	end
	end

	def edit
		@item = ItemCategory.find_by_id(params[:id])
	end

	def update
		@item = ItemCategory.find_by_id(params[:id])
		if @item.update_attributes(item_category_params)
      		redirect_to :action => 'index'
    	else
      		render :action => "edit"
    	end
	end

	def destroy
		item = ItemCategory.find_by_id(params[:id])
		item.destroy
		redirect_to :action => 'index'
	end

	private
	
	def item_category_params
		params.require(:item_category).permit!
	end
end
