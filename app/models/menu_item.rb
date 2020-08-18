class MenuItem
    # CARYN SAYS: fixed one little indent issue, otherwise up through object assoc methods look good 
    attr_accessor :price , :recipe, :restaurant
    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self 
    end

    def self.all
        @@all
    end

    def owner
        self.restaurant.owner
    end
end
