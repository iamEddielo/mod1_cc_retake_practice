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
        menu_items.max {|ele| ele.price}
    end

    def lowest_price
        menu_items.min {|ele| ele.price}
    end

    def cheapest_restaurant
        lowest_price.restaurant
    end

    def inactive
        restaurants.filter {|ele| ele.self != self}
    end
end
