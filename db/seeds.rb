ItemSize.destroy_all
Item.destroy_all
User.destroy_all
Review.destroy_all
Size.destroy_all

sizes = ["XS", "S", "M", "L", "XL"]

sizes.each { |s| Size.create(size_name: s) }

shirt1 = Item.create(
  item_name:"Miami Vice Tee", 
  quantity: 20, 
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  design:"Miami Vice",
  item_ref: 'MV-Shirt-1',
)

shirt2= Item.create(
  item_name:"<Developer> Tee", 
  quantity: 20, 
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  design:"Developer",
  item_ref: 'D-Shirt-1',
)

Item.all.each do |item|
  Size.all.each { |size| ItemSize.create(item_id: item.id, size_id: size.id) }
end

review1 = Review.create(
  rating: 5,
  comments: "Hey this is awesome!",
  user_id: 1,
  item_id: 1
)

puts "Database seeded with #{Item.count} items!"

User.create(email: 'some@guy.com', password: 'password', admin: false)
User.create(email: 'another@guy.com', password: 'password2', admin: false)
User.create(email: 'admin@email.com', password: 'password', admin: true)
