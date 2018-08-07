class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
    	if @item.save
      		redirect_to :action => 'index'
    	else
      		render :status=>"Not Updated"
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

	private
	def item_params
  		params.require(:item).permit!
	end

end
