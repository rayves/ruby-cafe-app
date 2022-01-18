require_relative './menu'
require_relative './order'

class Cafe
    attr_reader :name, :menu, :order

    def initialize(name, menu_items)
        @name = name
        @menu = Menu.new
        populate_menu(menu_items)
        @order = Order.new
    end

    def populate_menu(menu_items)
        menu_items.each do |name, price|
            @menu.add_item(name, price)
        end
    end

    def add_to_order(item, quantity)
        @order.add_item(item, quantity)
    end

    def welcome
       puts "Welcome to #{@name}!" 
    end
end