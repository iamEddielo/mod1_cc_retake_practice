class Recipe

    attr_accessor :description
    attr_reader :name
    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end
    
    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.filter {|item| item.recipe == self}
    end

    def restaurants
        menu_items.map {|ele| ele.restaurant}
    end

    def average_price
        menu_items.sum{|ele| ele.price / menu_items.length}
    end

    def highest_price
        # CARYN SAYS: make sure you're returning the price intger here 
        menu_items.max {|ele| ele.price}
    end

    def lowest_price
        # CARYN SAYS: this method was not required, but should probably also return the interger price 
        # ohhhh nevermind i see what you did their for cheapest restaurant! love to see it! 
        menu_items.min {|ele| ele.price}
    end

    def cheapest_restaurant
        lowest_price.restaurant
    end

    def inactive
        # CARYN SAYS: a little confused about your logic here
        # also note that this method should be a class method 
        restaurants.filter {|ele| ele.self != self}
    end
end
