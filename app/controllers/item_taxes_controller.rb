class ItemTaxesController < ApplicationController

	def index
		@item_details = ItemTax.all
	end

	def new
		@tax_details = ItemTax.new
		@item = []
		@price = []
	end

	def create
		@item = ItemTax.create(:item_id => params[:item],:tax_type => params[:type],:tax => params[:value])
    	if @item.save
      		redirect_to :action => 'index'
    	else
      		render :status=>"Not Updated"
    	end
	end

	def edit
		@tax_details = ItemTax.find_by_id(params[:id])
		@item = []
		@price = []
	end

	def update
		@tax_details = ItemTax.find_by_id(params[:id])
		if @tax_details.save
      		redirect_to :action => 'index'
    	else
      		render :status=>"Not Updated"
    	end
	end

	def get_items
		item_category = ItemCategory.find_by_id(params[:item_category_id])
		item = item_category.items.pluck(:id,:name)
		render :json => {data: item}
	end

	def get_items_price
		item = Item.where(id: params[:item_id])
		item = item.pluck(:id,:rate)
		render :json => {data: item}
	end

	def destroy
		item = ItemTax.find_by_id(params[:id])
		item.destroy
		redirect_to :action => 'index'
	end
	
end
