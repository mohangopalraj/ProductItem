class Item < ActiveRecord::Base
	validates :name, presence: {message: "Item name can't be blank"}
	validates :rate, presence: {message: "Rate can't be blank"}
	validates :item_category_id, presence: {message: "Item category can't blank"}
	belongs_to :item_category
	has_many :item_taxes
	accepts_nested_attributes_for :item_taxes, allow_destroy: true

	def find_tax_details
		amount = 0
		self.item_taxes.each do |item_tax|
			if item_tax.tax_type.eql?("percentage")
				amount+= (self.rate)*(item_tax.tax.to_f/100.0)
			else
				amount+= item_tax.tax
			end
		end
		amount.round(2)
	end

	def find_final_amount_inclusive_of_tax
		tax_amount = self.find_tax_details
		rate = self.rate
		rate + tax_amount
	end
end
