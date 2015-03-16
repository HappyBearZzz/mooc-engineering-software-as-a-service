# Define a class BookInStock which represents a book with an isbn number, isbn, and price of the book as a floating-point number, price, as attributes. 
# The constructor should accept the ISBN number (a string) as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) 
# if the ISBN number is the empty string or if the price is less than or equal to zero.

# Include the proper getters and setters for these attributes. Include a method price_as_string that returns the price of the book with a leading dollar sign and trailing zeros, 
# that is, a price of 20 should display as "$20.00" and a price of 33.8 should display as "$33.80".

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn == "" || price <= 0
	  raise ArgumentError.new("Bad arguments")
	end
    @isbn = isbn
	@price = price
  end
	
  def price_as_string
    toReturn = "$#{price}"
    if toReturn.include?(".")
      decimals = toReturn[(toReturn.index(".")+1)..toReturn.length]
	  toReturn << "0" if decimals.length == 1
	else
	  toReturn << ".00"
    end
    toReturn
  end
  
end
	