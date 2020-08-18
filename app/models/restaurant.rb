class Restaurant
    # CARYN SAYS: other than my note below, 
    # init, readers, writers and object association methods look clean

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

    # CARYN SAYS: redundant! you have this method from the attr already 
    def owner
        @owner
    end

    def recipes
        menu_items.map {|ele| ele.recipe}
    end
end
