Product.destroy_all
User.destroy_all
Entry.destroy_all
Transaction.destroy_all


translate_names = false

product1 = Product.create!(name: "Blu-ray Film")
product1.translate_name! if translate_names
product1.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942683/DVDs_2Bto_2BTroops_2BShipment_2B6-9_qff7ex.jpg"
product2 = Product.create!(name: "BMW")
product2.translate_name! if translate_names
product2.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942632/cq5dam.resized.img.1680.large.time1487342976922_csprem.jpg"
product3 = Product.create!(name: "Macbook pro")
product3.translate_name! if translate_names
product3.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942735/vpavic_161031_1256_0264.0_rrs82v.jpg"
product4 = Product.create!(name: "Hour of walking the dog")
product4.translate_name! if translate_names
product4.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942707/9-science-backed-reasons-to-own-a-dog_z9pgw3.jpg"
product5 = Product.create!(name: "Hour of garden work")
product5.translate_name! if translate_names
product5.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503943257/Woman-Spray-Garden-Hose-Water_as7jpm.jpg"
product6 = Product.create!(name: "Sushi")
product6.translate_name! if translate_names
product6.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942845/s_003j_snolb1.jpg"
product7 = Product.create!(name: "Cup coffee")
product7.translate_name! if translate_names
product7.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942861/is-coffee-paleo_fvylgq.jpg"
product8 = Product.create!(name: "Hour of teaching English")
product8.translate_name! if translate_names
product8.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503943234/1495314857081_l1onfs.jpg"
product9 = Product.create!(name: "Dog")
product9.translate_name! if translate_names
product9.photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942757/dog-walking1_xxkrmu.jpg"

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
  user: user5,
  product: product2
  )

Entry.create!(
  quantity: 100,
  user: user4,
  product: product5
  )

Entry.create!(
  quantity: 2,
  user: user2,
  product: product8
  )

Entry.create!(
  quantity: 4,
  user: user3,
  product: product2
  )

Entry.create!(
  quantity: 10,
  user: user3,
  product: product6
  )

Entry.create!(
  quantity: 7,
  user: user3,
  product: product7
  )


Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product1,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product7,
  wanted_product_quantity: 3,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product2,
  proposed_product_quantity: 2,
  proposed_by_user: user1,
  wanted_product:product1,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product3,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product2,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product4,
  proposed_product_quantity: 1,
  proposed_by_user: user5,
  wanted_product:product3,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product6,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product7,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product8,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product9,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product8,
  proposed_product_quantity: 1,
  proposed_by_user: user1,
  wanted_product:product6,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user2,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product5,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product4,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product4,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product4,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )

Transaction.create!(
  address: "Beta-i, Lisbon, Portugal",
  proposed_product: product1,
  proposed_product_quantity: 1,
  proposed_by_user: user2,
  wanted_product:product4,
  wanted_product_quantity: 1,
  status: 0,
  description: "Who in their right mind would want to be an artist today? Tortured, struggling – these are words often used to describe the artist.Elizabeth Gilbert, author of the famed novel Eat, Pray Love, challenges this portrayal of the artist in her talk."
  )






