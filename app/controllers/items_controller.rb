class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
    	if @item.save
      		redirect_to :action => 'index'
    	else
    		@errors = @item.errors
    		@item_tax_errors = @item.item_taxes.last.errors
      		render :new
    	end
	end

	def index
		@item = Item.all
	end

	def edit
		@item = Item.find_by_id(params[:id])
	end

	def update
		@item = Item.find_by_id(params[:id])
		if @item.update_attributes(item_params)
      		redirect_to :action => 'index'
    	else
      		render :action => "edit"
    	end
	end

	def destroy
		item = Item.find_by_id(params[:id])
		item.destroy
		redirect_to :action => 'index'
	end

	def show
		@item = Item.find_by_id(params[:id])
	end

	private
	def item_params
  		params.require(:item).permit(:name,:rate,:item_category_id,item_taxes_attributes: [:id,:tax_type,:tax,:_destroy])
	end

end
