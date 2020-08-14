class Restaurant

    attr_accessor :name, :owner,:star_rating
    
    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|items| items.restaurant == self}
    end

    def owner
        @owner
    end

    def recipes
        menu_items.map {|ele| ele.recipe}
    end
end
