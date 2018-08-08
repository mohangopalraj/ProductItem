class ItemTax < ActiveRecord::Base
	belongs_to :item

	class << self
		def find_tax_amount(rate,tax_type,tax_value)
			amount = 0
			if tax_type.eql?("percentage")
				amount = ((tax_value.to_f/100.0)*rate)
			else
				amount = tax_value
			end
			return amount
		end

		def find_total_amount(rate,tax)
			total_amount = rate.to_i + tax.to_i
			return total_amount
		end
	end
	
end
