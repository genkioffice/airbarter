Product.destroy_all
User.destroy_all
Entry.destroy_all
Transaction.destroy_all

# I couldn't seeded about translation. Let me ask tomorrow.
product1 = Product.create!(name: "Adult Cows")
product1.translate_name!
product2 = Product.create!(name: "Young calfs")
product2.translate_name!
product3 = Product.create!(name: "Pigs")
product3.translate_name!
product4 = Product.create!(name: "Goats")
product4.translate_name!
product5 = Product.create!(name: "Sheep")
product5.translate_name!
product6 = Product.create!(name: "Hens")
product6.translate_name!
product7 = Product.create!(name: "Bushels")
product7.translate_name!
product8 = Product.create!(name: "Carrots")
product8.translate_name!
product9 = Product.create!(name: "Tomatoes")
product9.translate_name!
product10 = Product.create!(name: "Potatoes")
product10.translate_name!
product11 = Product.create!(name: "Beans")
product11.translate_name!
product12 = Product.create!(name: "Euros")
product12.translate_name!

user1 = User.create!(email: "contact@gooddeal.com", password: "123456", first_name:"Abrar", facebook_picture_url: "https://images-na.ssl-images-amazon.com/images/I/610C68KnLjL._SY355_.jpg")
user1 = User.create!(email: "contact@verygooddeal.com", password: "123456", first_name:"Shannon", facebook_picture_url: "https://images-na.ssl-images-amazon.com/images/I/610C68KnLjL._SY355_.jpg")
user2 = User.create!(email: "barter@exchange.com", password: "123456", first_name:"Amira", facebook_picture_url: "https://images-na.ssl-images-amazon.com/images/I/610C68KnLjL._SY355_.jpg")
user3 = User.create!(email: "finnpedersenkazes@gmail.com", password: "123456", first_name:"Finn", facebook_picture_url: "https://images-na.ssl-images-amazon.com/images/I/610C68KnLjL._SY355_.jpg")
user4 = User.create!(email: "mohamad4alzobi@gmail.com", password: "123456", first_name:"Mohamed", facebook_picture_url: "https://images-na.ssl-images-amazon.com/images/I/610C68KnLjL._SY355_.jpg")
user5 = User.create!(email: "genki.takahashi.contact@gmail.com", password: "123456", first_name:"Genki", facebook_picture_url: "https://images-na.ssl-images-amazon.com/images/I/610C68KnLjL._SY355_.jpg")

Entry.create!(
  quantity: 10,
  user: user1,
  product: product1
  )

Entry.create!(
  quantity: 10,
  user: user1,
  product: product2
  )

Entry.create!(
  quantity: 100,
  user: user1,
  product: product5
  )

Entry.create!(
  quantity: 10,
  user: user2,
  product: product1
  )

Entry.create!(
  quantity: 10,
  user: user2,
  product: product2
  )

Entry.create!(
  quantity: 10,
  user: user2,
  product: product6
  )

Transaction.create!(
  address: "Lisbon",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product7,
  wanted_product_quantity: 3,
  status: 0
  )

Transaction.create!(
  address:"Japan",
  proposed_product: product5,
  proposed_product_quantity: 8,
  proposed_by_user: user1,
  wanted_product:product1,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address:"Kyoto",
  proposed_product: product5,
  proposed_product_quantity: 2,
  proposed_by_user: user1,
  wanted_product:product2,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address:"Osaka",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product3,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address:"Okinawa",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 0
  )

Transaction.create!(
  address:"North Korea",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address:"North Korea",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )
Transaction.create!(
  address:"North Korea",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )
Transaction.create!(
  address:"North Korea",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )
Transaction.create!(
  address:"North Korea",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )
Transaction.create!(
  address:"North Korea",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )







