class Recipe

attr_accessor :description
attr_reader :name
@all =[]

def initialize(name,description)
    @name = name
    @description = description
    @all << self
end
    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.filter {|item| item.recipe == self}
    end

    def restuarants
        MenuItem.all.select do 


end
