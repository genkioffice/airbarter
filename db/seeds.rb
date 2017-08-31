Product.destroy_all
User.destroy_all
Entry.destroy_all
Transaction.destroy_all

bluray_film = Product.create!(name: "Blu-ray Film")
dvd_film = Product.create!(name: "DVD Film")
computer = Product.create!(name: "Computer")
meal = Product.create!(name: "meal")
cup_of_coffee = Product.create!(name: "cup coffee")
walking_the_dog = Product.create!(name: "hour of walking the dog")
garden_work = Product.create!(name: "hour of garden work")
teaching_english = Product.create!(name: "hour of teaching English")
teaching_math = Product.create!(name: "hour of teaching Math")
teaching_programming = Product.create!(name: "hour of teaching Programming")
babysitting = Product.create!(name: "hour of baby-sitting")
computer_help = Product.create!(name: "hour of help with the computer")

bluray1_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004770/StarWars_nyra08.jpg" # Star Wars
bluray2_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004770/HarryPotter_taaakz.jpg" # Harry Potter
bluray3_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504011716/Matrix2_vftodm.jpg" # Matrix

dvds_photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942683/DVDs_2Bto_2BTroops_2BShipment_2B6-9_qff7ex.jpg" #dvd's

garden1_photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503943257/Woman-Spray-Garden-Hose-Water_as7jpm.jpg" # Garden
garden2_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004768/garden_work_2_jvln4e.jpg"
garden3_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004775/garden_work_1_bp0zy6.jpg"

meal1_photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942845/s_003j_snolb1.jpg" # Sushi meal
meal2_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004768/meal_3_yksycs.jpg" # Omelet
meal3_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004768/meal_1_eu91bq.jpg" # Quich
meal4_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004768/meal_2_csxbie.jpg" # Rize with sauce

coffee1_photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942861/is-coffee-paleo_fvylgq.jpg" # coffee
coffee2_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004768/coffee_2_kuaoir.jpg"

teacher_eng_photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503943234/1495314857081_l1onfs.jpg" # english teacher
teacher_math_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504013005/math_teacher1_hfaimg.jpg"
teacher_advanced_math_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504013004/math_teacher2_znjti9.jpg"

walking_dog1_photo_url = "http://res.cloudinary.com/df4gltzir/image/upload/v1503942757/dog-walking1_xxkrmu.jpg" # walking the dog
walking_dog2_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004769/walk_dog_1_mqnqa9.jpg"
walking_dog3_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504004769/walk_dog_2_jkzg8h.jpg"

old_woman_with_computer1_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504024508/older-woman-using-laptop_d7y8nf.jpg"

laptop_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504025104/used_laptop_cayla7.jpg"
teacher_programming_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504025342/instructor-with-student_cd9rdq.jpg"
baby_sitting1 = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504025342/babysitter_i29tu7.jpg"
baby_sitting2 = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504025343/babysitter2_abqpkj.jpg"

young_woman_with_dog = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504089289/young-woman-dog_u5ezb9.jpg"

person_placeholder = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504013004/person-placeholder-1_jbjbde.jpg"

bluray_film.photo_url = bluray1_photo_url
dvd_film.photo_url = dvds_photo_url
computer.photo_url = laptop_photo_url
meal.photo_url = meal4_photo_url
cup_of_coffee.photo_url = coffee1_photo_url
walking_the_dog.photo_url = walking_dog2_photo_url
garden_work.photo_url = garden1_photo_url
teaching_english.photo_url = teacher_eng_photo_url
teaching_math.photo_url = teacher_math_photo_url
teaching_programming.photo_url = teacher_programming_photo_url
babysitting.photo_url = baby_sitting1
computer_help.photo_url = old_woman_with_computer1_photo_url

bluray_film.save!
dvd_film.save!
computer.save!
meal.save!
cup_of_coffee.save!
walking_the_dog.save!
garden_work.save!
teaching_english.save!
teaching_math.save!
teaching_programming.save!
babysitting.save!
computer_help.save!

translate_names = true
bluray_film.translate_name! if translate_names
dvd_film.translate_name! if translate_names
computer.translate_name! if translate_names
meal.translate_name! if translate_names
cup_of_coffee.translate_name! if translate_names
walking_the_dog.translate_name! if translate_names
garden_work.translate_name! if translate_names
teaching_english.translate_name! if translate_names
teaching_math.translate_name! if translate_names
teaching_programming.translate_name! if translate_names
babysitting.translate_name! if translate_names
computer_help.translate_name! if translate_names

user_carlos = User.create!(email: "carlos@gmail.com", password: "123456", first_name: "Carlos", last_name: "Mendes", address: "Av. Casal Ribeiro 28, 1000-092 Lisboa, Portugal")
user_sarah = User.create!(email: "sarah@gmail.com", password: "123456", first_name: "Sarah", last_name: "Pedersen", address: "Praça Marechal Humberto Delgado, 1549-004 Lisboa, Portugal")
user_finn = User.create!(email: "finn@gmail.com", password: "123456", first_name: "Finn", last_name: "Pedersen", address: "Avenida de Berna 20, Lisbon, Portugal")
user_genki = User.create!(email: "genki@gmail.com", password: "123456", first_name: "Genki", last_name: "Takahashi", address: "Av. Brasília 352, 1350 Lisboa, Portugal")
user_astrid = User.create!(email: "astrid@gmail.com", password: "123456", first_name: "Astrid", last_name: "Ferreira", address: "Praça do Duque de Saldanha 4, 1050-094 Lisboa, Portugal")
user_claire = User.create!(email: "claire@gmail.com", password: "123456", first_name: "Claire", last_name: "Santos", address: "Parque Eduardo VII, 1070-051 Lisboa, Portugal")

user_carlos_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/c_crop,h_3000,w_3000/v1504014055/IMG_6396_luylah.jpg" # Carlos
user_sarah_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/v1504013385/sarah_yx5v2j.jpg" # Sarah
user_finn_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/c_crop,h_500,w_500/v1504013786/IMG_6356_v5b6ne.jpg" # Finn
user_genki_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/c_crop,h_500,w_500/v1504013776/IMG_6346_kqhsfb.jpg" # Genki
user_astrid_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/c_crop,g_face,h_500,w_500,x_0/v1504024508/older-woman-using-laptop_d7y8nf.jpg" # Old woman
user_claire_photo_url = "http://res.cloudinary.com/dwag6dz8c/image/upload/c_crop,g_face,h_700,w_700,x_0/v1504089289/young-woman-dog_u5ezb9.jpg"

user_carlos.facebook_picture_url = user_carlos_photo_url
user_sarah.facebook_picture_url = user_sarah_photo_url
user_finn.facebook_picture_url = user_finn_photo_url
user_genki.facebook_picture_url = user_genki_photo_url
user_astrid.facebook_picture_url = user_astrid_photo_url
user_claire.facebook_picture_url = user_claire_photo_url

user_carlos.description = "I am a busy teacher and my dog really like to go to the park."
user_sarah.description = "I have a lot of experience with looking after kids in all ages. I can also cook a meal for the kids."
user_finn.description = "I am a 52 year old dane living in France. I am a junior Ruby on Rails programmer."
user_genki.description = "I am Japanese student in Lisbon. I have studied in Belgium."
user_astrid.description = "I am an older lady with a lot of experience with cooking. I am learning to use the computer."
user_claire.description = "I grew up in the UK and is quite good with grammar and spelling. I am offering English classes."

user_carlos.save!
user_sarah.save!
user_finn.save!
user_genki.save!
user_astrid.save!
user_claire.save!

address01 = "221, Alameda dos Oceanos, 1990 Lisboa, Portugal"
address02 = "Praça Cidade Salazar 174, 1800-093 Lisboa, Portugal"
address03 = "Av. Alm. Gago Coutinho 72, 1950-380 Lisboa, Portugal"
address04 = "12o A 087, Campo Grande 35, 1700 Lisboa, Portugal"
address05 = "Estrada Da Serafina, 1070-057 Lisbon, Portugal"
address06 = ""
address07 = ""
address08 = ""
address09 = ""
address10 = ""
address11 = ""
address12 = ""
address13 = ""
address14 = ""
address15 = ""
address16 = ""
address17 = ""
address18 = ""
address19 = ""
address20 = ""


transaction1 = Transaction.create!(
  address: user_genki.address,
  proposed_product: meal,
  proposed_product_quantity: 1,
  proposed_by_user: user_genki,
  wanted_product:bluray_film,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [meal1_photo_url],
  description: "In exchange for the Matrix movies, I am proposing a delicious Sushi meal. "
  )

Transaction.create!(
  address: address01, # user_carlos.address,
  proposed_product: dvd_film,
  proposed_product_quantity: 3,
  proposed_by_user: user_carlos,
  wanted_product:bluray_film,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [dvds_photo_url],
  description: "I would like to exchage my DVD collection to BluRay. I give 3 DVDs for 1 BluRay movie. " +
              "I many different genres, but I like action movies, romantic movies and movies about football."
  )

Transaction.create!(
  address: address02, # user_sarah.address,
  proposed_product: babysitting,
  proposed_product_quantity: 20,
  proposed_by_user: user_sarah,
  wanted_product:computer,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [baby_sitting2],
  description: "I am proposing 20 hours of babysitting in exchange for a used laptop. I need it for my school. " +
              "I have a lot of experience with looking after kids in all ages. I can also cook a meal for the kids."
  )

Transaction.create!(
  address: user_astrid.address,
  proposed_product: meal,
  proposed_product_quantity: 1,
  proposed_by_user: user_astrid,
  wanted_product:computer_help,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [meal2_photo_url],
  description: "I will cook you a meal, exchange for teaching me how to use the computer. " +
              "I am an older lady with a lot of experience with cooking. I need to use Skype so I can call my grand-children."
  )

Transaction.create!(
  address: address03, # user_carlos.address,
  proposed_product: teaching_programming,
  proposed_product_quantity: 1,
  proposed_by_user: user_carlos,
  wanted_product:walking_the_dog,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [teacher_programming_photo_url],
  description: "I can teach a hour of programming, if you will walk the dog for an hour. " +
              "I am a busy teacher and my dog really like to go to the park."
  )

Transaction.create!(
  address: user_claire.address,
  proposed_product: walking_the_dog,
  proposed_product_quantity: 1,
  proposed_by_user: user_claire,
  wanted_product:walking_the_dog,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user_sarah,
  photo_urls: [walking_dog3_photo_url],
  description: "Let us optimize our time. I propose to walk your dog today, if you will walk my dog tomorrow. " +
              "My dog is really nice and will not give you any trouble. "
  )

Transaction.create!(
  address: user_claire.address,
  proposed_product: teaching_english,
  proposed_product_quantity: 1,
  proposed_by_user: user_claire,
  wanted_product:garden_work,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user_sarah,
  photo_urls: [teacher_eng_photo_url],
  description: "I need help to mow the lawn, because I have a problem with my back. In exchange I can help with your homework. " +
              "I grew up in the UK and is quite good with grammar and spelling."
  )

Transaction.create!(
  address: user_carlos.address,
  proposed_product: teaching_english,
  proposed_product_quantity: 1,
  proposed_by_user: user_carlos,
  wanted_product:walking_the_dog,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user_sarah,
  photo_urls: [teacher_eng_photo_url],
  description: "I will give you English classes, if you will walk my dog." +
              "I am a busy teacher and my dog really like to go to the park."
  )

Transaction.create!(
  address: address04, # user_carlos.address,
  proposed_product: teaching_math,
  proposed_product_quantity: 1,
  proposed_by_user: user_carlos,
  wanted_product:walking_the_dog,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user_sarah,
  photo_urls: [teacher_math_photo_url],
  description: "I will give you Math classes, if you will walk my dog." +
              "I am a busy teacher and my dog really like to go to the park."
  )

Transaction.create!(
  address: address05, # user_carlos.address,
  proposed_product: bluray_film,
  proposed_product_quantity: 1,
  proposed_by_user: user_carlos,
  wanted_product:bluray_film,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user_sarah,
  photo_urls: [bluray2_photo_url],
  description: "Let us exchange movies. Maybe I have a movie that you have not seen yet. "
  )

Transaction.create!(
  address: user_carlos.address,
  proposed_product: teaching_english,
  proposed_product_quantity: 1,
  proposed_by_user: user_carlos,
  wanted_product:walking_the_dog,
  wanted_product_quantity: 1,
  status: 1,
  accepted_by_user: user_sarah,
  photo_urls: [teacher_eng_photo_url],
  description: "I will give you English classes, if you will walk my dog." +
              "I am a busy teacher and my dog really like to go to the park."
  )

Transaction.create!(
  address: user_sarah.address,
  proposed_product: babysitting,
  proposed_product_quantity: 2,
  proposed_by_user: user_sarah,
  wanted_product:meal,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [baby_sitting2],
  description: "I can look after the kids for two hours, in exchange for dinner with you. "  +
              "I have a lot of experience with looking after kids in all ages. I can also cook a meal for the kids."

  )

Transaction.create!(
  address: user_sarah.address,
  proposed_product: meal,
  proposed_product_quantity: 1,
  proposed_by_user: user_sarah,
  wanted_product:meal,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [meal3_photo_url],
  description: "I can cook a meal for us today, then you can cook tomorrow." +
              "I  like to cook health meals with vegetables and meat."
  )

Transaction.create!(
  address: user_sarah.address,
  proposed_product: bluray_film,
  proposed_product_quantity: 1,
  proposed_by_user: user_sarah,
  wanted_product:meal,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [bluray1_photo_url],
  description: "I have the Star Wars movie, I will exchange it for a nice meal with desert." +
              "It is a great movie, but I have seen it too many times. "
  )

Transaction.create!(
  address: user_sarah.address,
  proposed_product: garden_work,
  proposed_product_quantity: 1,
  proposed_by_user: user_sarah,
  wanted_product:teaching_english,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [garden3_photo_url],
  description: "I can help with mowing the lawn and other garden work. I need help with my English homework." +
              "I have experience from helping my dad. "
  )

Transaction.create!(
  address: user_sarah.address,
  proposed_product: computer_help,
  proposed_product_quantity: 1,
  proposed_by_user: user_sarah,
  wanted_product:meal,
  wanted_product_quantity: 1,
  status: 0,
  photo_urls: [teacher_programming_photo_url],
  description: "I can teach you basic computer skills. I need help with my English homework." +
              "I am quite good with computers and can help you set it. I am not an expert. "
  )


Entry.create!(
  quantity: 10,
  user: user_carlos,
  product: bluray_film
  )

Entry.create!(
  quantity: 10,
  user: user_carlos,
  product: dvd_film
  )

Entry.create!(
  quantity: 10,
  user: user_sarah,
  product: walking_the_dog
  )

Entry.create!(
  quantity: 10,
  user: user_sarah,
  product: babysitting
  )

Entry.create!(
  quantity: 10,
  user: user_sarah,
  product: meal
  )

Entry.create!(
  quantity: 4,
  user: user_finn,
  product: dvd_film
  )

Entry.create!(
  quantity: 1,
  user: user_finn,
  product: computer
  )

Entry.create!(
  quantity: 10,
  user: user_finn,
  product: computer_help
  )

Entry.create!(
  quantity: 10,
  user: user_finn,
  product: teaching_programming
  )

Entry.create!(
  quantity: 10,
  user: user_finn,
  product: garden_work
  )

Entry.create!(
  quantity: 5,
  user: user_genki,
  product: meal
  )

Entry.create!(
  quantity: 10,
  user: user_genki,
  product: dvd_film
  )

Entry.create!(
  quantity: 10,
  user: user_astrid,
  product: meal
  )

Entry.create!(
  quantity: 10,
  user: user_claire,
  product: teaching_english
  )

Entry.create!(
  quantity: 10,
  user: user_claire,
  product: walking_the_dog
  )

