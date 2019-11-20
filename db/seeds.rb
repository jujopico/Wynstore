Item.destroy_all

shirt1 = Item.create(
  item_name:"Miami Vice Shirt", 
  quantity: 10, 
  item_description:"like the heat jerseys!", 
  price:19.99, 
  category:"shirt", 
  size:"M", 
  design:"Miami Vice"
)

shirt2 = Item.create(
  item_name:"<C35> Shirt", 
  quantity: 28, 
  item_description:"C35 the bomb.com!", 
  price:19.99, 
  category:"shirt", 
  size:"L", 
  design:"C35"
)

puts "Database seeded with #{Item.count} items!"