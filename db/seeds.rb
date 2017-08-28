Product.destroy_all
User.destroy_all
Entry.destroy_all
Transaction.destroy_all


translate_names = false

product1 = Product.create!(name: "Blu-ray Film")
product1.translate_name! if translate_names
product2 = Product.create!(name: "DVD Film")
product2.translate_name! if translate_names
product3 = Product.create!(name: "Computer Accessory")
product3.translate_name! if translate_names
product4 = Product.create!(name: "Hour of walking the dog")
product4.translate_name! if translate_names
product5 = Product.create!(name: "Hour of garden work")
product5.translate_name! if translate_names
product6 = Product.create!(name: "Dinner meal")
product6.translate_name! if translate_names
product7 = Product.create!(name: "Cup coffee")
product7.translate_name! if translate_names
product8 = Product.create!(name: "Walk in the park")
product8.translate_name! if translate_names
product9 = Product.create!(name: "Lunch meal")
product9.translate_name! if translate_names

user1 = User.create!(email: "carlos@gmail.com", password: "123456", first_name: "Carlos", address: "Beta-i, Lisbon, Portugal")
user2 = User.create!(email: "sarah@gmail.com", password: "123456", first_name: "Sarah")
user3 = User.create!(email: "finn@gmail.com", password: "123456", first_name: "Finn", address: "Avenida de Berna 20, Lisbon, Portugal")
user4 = User.create!(email: "genki@gmail.com", password: "123456", first_name: "Genki")
user5 = User.create!(email: "shannon@gmail.com", password: "123456", first_name: "Shannon")


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
  quantity: 2,
  user: user2,
  product: product1
  )

Entry.create!(
  quantity: 4,
  user: user2,
  product: product2
  )

Entry.create!(
  quantity: 10,
  user: user2,
  product: product6
  )

Entry.create!(
  quantity: 7,
  user: user3,
  product: product1
  )


Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product7,
  wanted_product_quantity: 3,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 2,
  proposed_by_user: user1,
  wanted_product:product1,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product2,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product3,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product6,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product4,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product6,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product4,
  wanted_product_quantity: 1,
  status: 0
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product6,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product4,
  wanted_product_quantity: 1,
  status: 0
  )






