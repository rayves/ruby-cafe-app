require_relative './menu_item'

class Menu
    attr_reader :menu_items
    
    def initialize
        @menu_items = []
    end

    def add_item(name, price)
        menu_item = MenuItem.new(name, price)
        @menu_items << menu_item
    end
    
    def get_price(name)
        item = @menu_items.find {|menu_item| menu_item.name == name}
        return item.price
    end

    def display
        puts "Menu"
        puts "------"
        @menu_items.each {|item| puts item}
            # last line of code is automatically returned.
            # for a nil return -> this needs to be explicitly stated.
        return nil
    end

    def validate_item(name)
        @menu_items.each do |menu_item|
            if menu_item.name == name
                return name
            end
        end
        return nil
    end
end

# # Test
# menu = Menu.new
# menu.add_item("latte", 4.00)
# menu.add_item("tea", 3.00)

# menu.display