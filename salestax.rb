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
		if (type == "chocolate" || type == "med" || type == "food")
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
		if (type == "chocolate" || type == "med" || type == "food")
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


class Cart < Item

	i1first = Item.new("book", 12.49, false)
	i1second = Item.new("music", 14.99, false)
	i1third = Item.new("chocolate", 0.85, false)
	i1salestax = (i1first.item_tax + i1second.item_tax + i1third.item_tax).round(2)
	i1total = (i1first.price + i1second.price + i1third.price + i1salestax).round(2)

	puts "Output 1:"
	puts "1 #{i1first.type}: #{i1first.price}"
	puts "1 #{i1second.type}: #{i1second.price}"
	puts "1 #{i1third.type}: #{i1third.price}"
	puts "Sales Taxes: #{i1salestax}"
	puts "Total: #{i1total}"

	i2first = Item.new("chocolate", 10, true)
	i2second = Item.new("perfume", 47.50, true)
	i2salestax = (i2first.item_tax + i2second.item_tax).round(2)
	i2total = (i2first.price + i2second.price + i2salestax).round(2)


	puts "Output 2:"
	puts "1 imported #{i2first.type}: #{i2first.price}"
	puts "1 imported #{i2second.type}: #{i2second.price}"
	puts "Sales Taxes: #{i2salestax}"
	puts "Total: #{i2total}"

	i3first = Item.new("perfume", 32.19, true)
	i3second = Item.new("perfume", 20.89, false)
	i3third = Item.new("med", 9.75, false)
	i3fourth = Item.new("chocolate", 11.85, true)
	i3salestax = (i3first.item_tax + i3second.item_tax + i3third.item_tax + i3fourth.item_tax).round(2)
	i3total = (i3first.price + i3second.price + i3third.price + i3fourth.price + i3salestax).round(2)

	puts "Output 3:"
	puts "1 imported #{i3first.type}: #{i3first.price}"
	puts "1 #{i3second.type}: #{i3second.price}"
	puts "1 #{i3third.type}: #{i3third.price}"
	puts "1 imported #{i3fourth.type}: #{i3fourth.price}"	
	puts "Sales Taxes: #{i3salestax}"
	puts "Total: #{i3total}"



end




