Item.destroy_all
User.destroy_all
Review.destroy_all

shirt1 = Item.create(
  item_name:"Miami Vice Tee", 
  quantity: 20, 
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  size:"XS",
  design:"Miami Vice"
)

shirt2 = Item.create(
  item_name:"Miami Vice Tee", 
  quantity: 20, 
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  size:"S",
  design:"Miami Vice"
)

shirt3 = Item.create(
  item_name:"Miami Vice Tee", 
  quantity: 20, 
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  size:"M",
  design:"Miami Vice"
)

shirt4 = Item.create(
  item_name:"Miami Vice Tee", 
  quantity: 20, 
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  size:"L",
  design:"Miami Vice"
)

shirt5 = Item.create(
  item_name:"Miami Vice Tee", 
  quantity: 20, 
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  size:"XL",
  design:"Miami Vice"
)

shirt6 = Item.create(
  item_name:"<Developer> Tee", 
  quantity: 20, 
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  size:"XS",
  design:"Developer"
)

shirt7 = Item.create(
  item_name:"<Developer> Tee", 
  quantity: 20, 
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  size:"S",
  design:"Developer"
)

shirt8 = Item.create(
  item_name:"<Developer> Tee", 
  quantity: 20, 
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  size:"M",
  design:"Developer"
)

shirt9 = Item.create(
  item_name:"<Developer> Tee", 
  quantity: 20, 
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  size:"L",
  design:"Developer"
)

shirt10 = Item.create(
  item_name:"<Developer> Tee", 
  quantity: 20, 
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  size:"XL",
  design:"Developer"
)

review 1 = Review.create(
  rating: 5,
  comments: "Hey this is awesome!",
  user_id: 1,
  item_id: 1
)

puts "Database seeded with #{Item.count} items!"

User.create(email: 'some@guy.com', password: 'password',)
User.create(email: 'another@guy.com', password: 'password2',)
