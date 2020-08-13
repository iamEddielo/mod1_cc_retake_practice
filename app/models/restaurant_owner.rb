class RestaurantOwner

    attr_accessor :name, :age
    @@all =[]

    def intialize(name,age,)
        @name = name
        @age = age
    end

    def self.all
        @all
    end




end
