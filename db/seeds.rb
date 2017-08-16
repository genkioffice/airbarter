Product.destroy_all
User.destroy_all
Entry.destroy_all
Transaction.destroy_all

product1 = Product.create!(name: "Adult Cows")
product2 = Product.create!(name: "Young calfs")
product3 = Product.create!(name: "Pigs")
product4 = Product.create!(name: "Goats")
product5 = Product.create!(name: "Sheep")
product6 = Product.create!(name: "Hens")
product7 = Product.create!(name: "Bushels")
Product.create!(name: "Carrots")
Product.create!(name: "Tomatoes")
Product.create!(name: "Potatoes")
Product.create!(name: "Beans")
Product.create!(name: "Euros")
Product.create!(name: "Bitcoin")

user1 = User.create!(email: "contact@gooddeal.com", password: "123456")
user2 = User.create!(email: "barter@exchange.com", password: "123456")
user3 = User.create!(email: "finnpedersenkazes@gmail.com", password: "123456")

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
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product7,
  wanted_product_quantity: 3,
  status: 0
  )

Transaction.create!(
  proposed_product: product5,
  proposed_product_quantity: 8,
  proposed_by_user: user1,
  wanted_product:product1,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  proposed_product: product5,
  proposed_product_quantity: 2,
  proposed_by_user: user1,
  wanted_product:product2,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product3,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 0
  )

Transaction.create!(
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 6,
  status: 1,
  accepted_by_user: user2
  )









