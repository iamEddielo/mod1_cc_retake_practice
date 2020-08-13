class MenuItem

    attr_accessor :price
    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
    end

    def self.all
        @@all
    end
    
end
