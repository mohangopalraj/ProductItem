class ItemTax < ActiveRecord::Base
	belongs_to :item
	validates :tax_type, presence: {message: "Tax type can't be blank"}
	validates :tax, presence: {message: "Tax can't be blank"}
end
