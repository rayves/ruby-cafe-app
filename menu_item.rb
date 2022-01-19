class MenuItem
    attr_reader :price, :name

    def initialize(name,price)
        @name = name
        @price = price
    end

    def to_s # to_s override to display our display method (in menu) correctly
        return "#{@name}" + " "*(10 - @name.length) + "... #{@price}"
            # space x number - length of name of item -> so menu items will be displayed evenly spaced.
    end 

end