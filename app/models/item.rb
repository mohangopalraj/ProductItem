class Item < ActiveRecord::Base
	belongs_to :item_category
	has_many :item_taxes
end
