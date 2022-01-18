class MenuItem
    attr_reader :price, :name

    def initialize(name,price)
        @name = name
        @price = price
    end

    def to_s
        return "#{@name}" + " "*(10 - @name.length) + "... #{@price}"
            # space x number - length of name of item -> so menu items will be displayed evenly spaced.
    end 

end