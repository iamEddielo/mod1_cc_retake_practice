class RestaurantOwner
    # CARYN SAYS: init, readers, writers and object association methods look clean 

    attr_accessor :name, :age
    @@all=[]

    def initialize(name,age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.filter {|ele| ele.owner == self}
    end

    def menu_items
        restaurants.map {|ele| ele.menu_items}
    end

end
