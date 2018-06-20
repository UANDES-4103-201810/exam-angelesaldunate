Customer.create!([
  {email: "angeles@gmail.com", encrypted_password: "$2a$11$hjBYuFOeZZHXT3h2qIbWsOnDWR5AniLNRyqKd.10BUOAVvaqqNitW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-06-20 21:41:34", last_sign_in_at: "2018-06-20 21:41:34", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Angeles", admin: nil}
])
Crust.create!([
  {price: 100, name: "Regular"},
  {price: 200, name: "Thin"}
])
Ingredient.create!([
  {name: "Cheese"},
  {name: "Tomato"},
  {name: "Sauce"},
  {name: "Peperonni"},
  {name: "Pinaple"},
  {name: "Onion"}
])
Recipe.create!([
  {name: "Hawaian", price: 1000},
  {name: "Margarita", price: 2000},
  {name: "Peperonni", price: 3000}
])
RecipeIngredient.create!([
  {recipe_id: 1, ingredient_id: 6},
  {recipe_id: 1, ingredient_id: 3},
  {recipe_id: 1, ingredient_id: 1},
  {recipe_id: 2, ingredient_id: 7},
  {recipe_id: 2, ingredient_id: 2},
  {recipe_id: 2, ingredient_id: 1},
  {recipe_id: 3, ingredient_id: 5},
  {recipe_id: 3, ingredient_id: 3},
  {recipe_id: 3, ingredient_id: 1}
])
