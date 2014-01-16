class Item 
	attr_accessor :type, :price, :import
	@salestax = 0.1
	@importtax = 0.05
	def initialize(t, p, i)
		type = t
		price = p
		import = i 
	end 
	def tax_amount

		if (type == "book" || type == "med" || type == "food")
			if import == false
			tax = 0
			else 
				tax = @importtax
			end
		else
			if import == false
				tax = @salestax
			else
				tax = @salestax #+ @importtax
			end
		end
		return tax
	end
end

first = Item.new("book", 50, false)
puts "#{first.tax_amount}"


