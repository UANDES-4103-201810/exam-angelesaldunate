Customer.create!([
  {email: "angeles@gmail.com", encrypted_password: "$2a$11$hjBYuFOeZZHXT3h2qIbWsOnDWR5AniLNRyqKd.10BUOAVvaqqNitW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-06-20 21:41:34", last_sign_in_at: "2018-06-20 21:41:34", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Angeles", admin: nil},
  {email: "kaki@hola.com", encrypted_password: "$2a$11$LrplrJFqaYbzTPZ4sEr0uur0fSbv1K2znezYHzJhP/vUJnVHulG0W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-06-20 22:44:06", last_sign_in_at: "2018-06-20 22:44:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Kaki", admin: nil}
])
Crust.create!([
  {price: 100, name: "Regular"},
  {price: 200, name: "Thin"}
])
CustomerOrder.create!([
  {customer_id: 1, order_id: 2, active: true},
  {customer_id: 2, order_id: 4, active: true}
])
DeliveryInfo.create!([
  {address: "sdss", adressinfo: "adssdadsa", phone: 123456},
  {address: "sdasdds", adressinfo: "dssdadsa", phone: 123456}
])
Ingredient.create!([
  {name: "Cheese"},
  {name: "Tomato"},
  {name: "Sauce"},
  {name: "Peperonni"},
  {name: "Pinaple"},
  {name: "Onion"}
])
Order.create!([
  {payment: nil},
  {payment: nil},
  {payment: nil},
  {payment: nil}
])
Pizza.create!([
  {crust_id: 2, recipe_id: 2},
  {crust_id: 2, recipe_id: 2},
  {crust_id: 2, recipe_id: 3},
  {crust_id: 2, recipe_id: 1},
  {crust_id: 1, recipe_id: 2},
  {crust_id: 1, recipe_id: 2},
  {crust_id: 1, recipe_id: 2},
  {crust_id: 2, recipe_id: 2},
  {crust_id: 2, recipe_id: 3},
  {crust_id: 1, recipe_id: 1}
])
PizzaOrder.create!([
  {pizza_id: 2, order_id: 2},
  {pizza_id: 3, order_id: 3},
  {pizza_id: 4, order_id: 4},
  {pizza_id: 8, order_id: 2},
  {pizza_id: 9, order_id: 2},
  {pizza_id: 10, order_id: 2}
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
