puts "Cleaning DB..."
  Ingredient.destroy_all

puts "Populating ingredients ..."

i = Ingredient.create(name: "ice")
i2 = Ingredient.create(name: "Water")
i3 = Ingredient.create(name: "Vodka")
i4 = Ingredient.create(name: "Gin")

drink = Cocktail.create(name: "The Best")

d = Dose.new(description: "two cubes")
d.cocktail = drink
d.ingredient = i

d.save!
# d2 = Does.create(description:"A little bit", cocktail_id: c1.id, ingredient_id: i4.id)
# d4 = Does.create(description:"A squeeze", cocktail_id: c1.id, ingredient_id: i1.id)

# d3 = Does.create(description: "A splash", cocktail_id: c2.id, ingredient_id: i3.id)
# d4 = Does.create(description:"A little bit", cocktail_id: c2.id, ingredient_id: i2.id)

puts "Finished!"
