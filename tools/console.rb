# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
#binding.pry



eddie= RestaurantOwner.new("Eddie", 45)
restaurant1= Restaurant.new(eddie,"TacoProject",5)
restaurant2= Restaurant.new(eddie,"Taco",15)
recipe1= Recipe.new("Chiken Cachetore","boil water with tomatoe sauce")
recipe2= Recipe.new("Chiken "," tomatoe sauce")
recipe3= Recipe.new("Beef","Shredded slow bake sauce")
menuitem1= MenuItem.new(restaurant1,recipe1, 10.50)
menuitem2=MenuItem.new(restaurant2,recipe2, 20.50)

# CARYN SAYS: Make sure you add enough instances to test your code thoroughly! 

binding.pry

