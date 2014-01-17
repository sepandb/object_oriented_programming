class Item
	attr_accessor :type, :price, :import
	def initialize(t, p, i)
		@type = t
		@price = p
		@import = i
		@salestax = 0.1
	    @importtax = 0.05
	end


	def tax_rate
		tr = 0
		if (type == 'chocolate' || type == 'med' || type == 'food')
			if import == false
				tr = 0
			else
				tr = @importtax
			end
		else
			if import == false
				tr = @salestax
			else
				tr = @salestax+@importtax
			end
		end
		return tr
	end

	def item_tax
		price* tax_rate
	end

	def item_total
		price + item_tax
	end

end


class Cart

	attr_accessor :container

	def initialize
		@container = Array.new
	end

	def add_item(i)
		@container.push(i)
	end

	def print_items
		puts "#{@container}"
	end

	def total_price
		total = 0
		@container.each do |item|
			item_price = item.price
			total = total + item_price
		end
	    return total
	end

	def number_of_items
		@container.count
	end

	def generate_receipt(x)
		puts "Output #{x}: "
		@container.each do |item|
			puts "1 #{item.type} : $#{item.price}"
		end
		puts "Sales Tax: $#{taxes_total}"
		puts "Total: #{total_price_with_taxes}"
	end

	def taxes_total
		total = 0
		@container.each do |item|
			tax = item.item_tax
			total = tax + total
		end
		return total
	end

	def total_price_with_taxes
		total = 0
		@container.each do |item|
			item_price_with_tax = item.item_total
			total = total + item_price_with_tax
		end
		return total
	end

end

object1 = Item.new("book", 100,true)
object2 = Item.new("chocolate", 200, true)
newcart = Cart.new
newcart.add_item(object1)
newcart.add_item(object2)
newcart.generate_receipt(1)

puts "#{object1.return_self}"
