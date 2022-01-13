class Order
    attr_reader :order_items

    def initialize
        @order_items = Hash.new(0)
            # create a new hash and default value of any key to be 0.
            # allows the += to work
                # if key is in hash already then add quantity passed in to current quantity.
                # if key is not in hash already then create the key with value 0 then add quantity passed through.
            # {} appears as a nil class if empty.
    end

    def add_item(name, quantity)
        @order_items[name] += quantity
        # add new key equaled to the quantity
    end

end