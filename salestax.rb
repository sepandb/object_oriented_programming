class Item 
	attr_accessor :type, :price, :import

	def initialize(t, p, i)
		@type = t
		@price = p
		@import = i 
	end 
	def item_tax
	@salestax = 0.1
	@importtax = 0.05
		if (type == "book" || type == "med" || type == "food")
			if import == false
			tax = 0
			else 
				tax = @importtax*@price
			end
		else
			if import == false
				tax = @salestax*@price
			else
				tax = (@salestax + @importtax)*@price
			end
		end
	end

		def item_total
	@salestax = 0.1
	@importtax = 0.05
		if (type == "book" || type == "med" || type == "food")
			if import == false
			tax = @price
			else 
				tax = (1+@importtax)*@price
			end
		else
			if import == false
				tax = (1+@salestax)*@price
			else
				tax = (1+ @salestax + @importtax)*@price
			end
		end
	end
end



first = Item.new("food", 30, true)
puts "#{first.item_tax}"
puts "#{first.item_total}"


