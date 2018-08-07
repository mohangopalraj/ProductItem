class ItemTaxesController < ApplicationController

	def index
		@item_details = ItemTax.all
	end

	def new
		@tax_details = ItemTax.new
		@item = []
		@price = []
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
	
end
