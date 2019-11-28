ItemSize.destroy_all
Item.destroy_all
User.destroy_all
Review.destroy_all
Size.destroy_all

sizes = ["XS", "S", "M", "L", "XL"]

sizes.each { |s| Size.create(size_name: s) }

shirt1 = Item.create(
  item_name:" Wyncode Miami Vice",  
  item_description:"This design is a nod to the Miami Heat vice jerseys. Let's go Heat!", 
  price:19.99, 
  category:"shirt", 
  design:"Miami Vice",
  item_ref: 'MV-Shirt-1',
  itemURL: "https://wynstore-assets.herokuapp.com/images/Artboard_3.png" 
)

shirt2= Item.create(
  item_name:" Wyncode <Developer>",  
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:24.99, 
  category:"shirt", 
  design:"Developer",
  item_ref: 'D-Shirt-1',
  itemURL:  "https://wynstore-assets.herokuapp.com/images/Artboard_10.png"
)

shirt3= Item.create(
  item_name:"Wyncode TA",  
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:19.99, 
  category:"shirt", 
  design:"TA1",
  item_ref: 'TA-Shirt-1',
  itemURL:  "https://wynstore-assets.herokuapp.com/images/Artboard_2.png"
)

shirt4= Item.create(
  item_name:"Wyncode <gotHired>",  
  item_description:"Show off your front-end developer skills with this shirt.", 
  price:24.99, 
  category:"shirt", 
  design:"Hired",
  item_ref: 'Hired-Shirt-1',
  itemURL:  "https://wynstore-assets.herokuapp.com/images/Artboard_11.png"
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
