require_relative '../menu_item'
require_relative '../menu'
require_relative '../order'
require_relative '../cafe'

# best pratice -> developing from the bottom up - lowest level data structure (menuitem)



describe MenuItem do

    # before(:each) do
    #     name = "latte"
    #     price = 4.00
    # end

    it 'should return the price of the item' do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.price).to eq(price)
    end

    it 'should return the name of the item' do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.name).to eq(name)
    end
end

describe Menu do
    it 'should be able to get an items price' do
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_price(name)).to eq(price)
    end

    it 'should be able to add an item' do
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.menu_items.length).to be(1)
    end

end

describe Order do
    it 'should add an item to the order' do
        order = Order.new
        name = "latte"
        quantity = 2
        order.add_item(name, quantity)
        expect(order.order_items.length).to be(1)
    end

    it 'should update an item quantity' do
        order = Order.new
        name = "latte"
        quantity = 2
        quantity_add = 3
        order.add_item(name, quantity)
        order.add_item(name, quantity_add)
        expect(order.order_items[name]).to be(quantity_add+quantity)
    end
end

describe Cafe do

    it 'should create a cafe with a name' do
        name = "My cafe"
        menu_items = {}
        cafe = Cafe.new(name, menu_items)
        expect(cafe.name).to eq(name)
    end

    it 'should create a cafe with a menu' do
        name = "My cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        expect(cafe.menu.menu_items.length).to be(2)
    end

    it 'should add an item to order' do
        name = "My cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        item = "latte"
        quantity = 1
        cafe.add_to_order(item, quantity)
        expect(cafe.order.order_items.length).to be(1)
    end

    it 'should be able to hold multiple order items' do
        name = "My cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        item = "latte"
        quantity = 1
        cafe.add_to_order(item, quantity)
        cafe.add_to_order("tea", quantity)
        expect(cafe.order.order_items.length).to be(2)
    end
end
