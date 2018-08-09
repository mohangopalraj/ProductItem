class ItemCategory < ActiveRecord::Base
	validates :name, presence: {message: "Item category name can't be blank"}
	has_many :items
end
