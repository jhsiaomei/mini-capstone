# User.create!([
#   {email: "a@test.com", encrypted_password: "$2a$10$R.q8zOwMmLSwd/KH9E4o0Oj.L4.XCiFAMS60yfk/b.CmrF5ERMjk2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-24 03:06:45", last_sign_in_at: "2015-11-24 03:06:45", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
#   {email: "test@email.com", encrypted_password: "$2a$10$yKP1hmXVIKpBI6y3hesWFuJNlpwnpSPflH4zpL14YA83gfZam3hda", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-11-27 03:56:37", last_sign_in_at: "2015-11-26 00:31:06", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
# ])
Image.create!([
  {name: "trex", link: "http://vignette2.wikia.nocookie.net/monsterhunterfanon/images/1/1f/Trex.png/revision/latest?cb=20150615193630", product_id: 13},
  {name: "velociraptor", link: "http://img1.wikia.nocookie.net/__cb20150420213210/jurassicpark/images/1/12/Velociraptor-detail-header.png", product_id: 14},
  {name: "triceratops", link: "http://res.cloudinary.com/dk-find-out/image/upload/q_80,w_960/Triceratops_left_cepidt.png", product_id: 15},
  {name: "apatosaurus", link: "http://vignette3.wikia.nocookie.net/dino/images/7/7f/Apatosaurus_LeCire.png/revision/latest?cb=20131222162418", product_id: 16},
  {name: "ankylosaurus", link: "http://img3.wikia.nocookie.net/__cb20150115010533/jurassicpark/images/e/e6/Ankylosaurus_Render.png", product_id: 17},
  {name: "iguanodon", link: "http://res.cloudinary.com/dk-find-out/image/upload/q_70,c_fit,w_1200,h_630/iguanodon_gwa3q7.jpg", product_id: 18},
  {name: "meme", link: "http://img.memecdn.com/wonder-dinosaur_o_2137635.jpg", product_id: 19},
  {name: "trex_cartoon", link: "http://www.clipartlord.com/wp-content/uploads/2013/12/t-rex4.png", product_id: 13},
  {name: "trex_purple", link: "http://www.clker.com/cliparts/4/8/4/a/12573620152095575984JazzyNico_Dino_Simple_T-REX.svg.hi.png", product_id: 13},
  {name: "iguanodon_cartoon", link: "https://t2.ftcdn.net/jpg/00/03/52/27/240_F_3522759_Q5g4ng3IoBhZSyLhFLaxqiwKqD5ph4.jpg", product_id: 18},
  {name: "ankylosaurus_bw", link: "http://thumbs.dreamstime.com/x/dinosaur-ankylosaurus-coloring-pages-isolated-illustration-cartoon-35333254.jpg", product_id: 17}
])
Order.create!([
  {user_id: nil, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, product_id: 18, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, product_id: 14, quantity: 1, subtotal: "30000.0", tax: "2700.0", total: "32700.0"},
  {user_id: 2, product_id: 14, quantity: 1, subtotal: "30000.0", tax: "2700.0", total: "32700.0"},
  {user_id: 2, product_id: 14, quantity: 1, subtotal: "30000.0", tax: "2700.0", total: "32700.0"},
  {user_id: 2, product_id: 14, quantity: 1, subtotal: "30000.0", tax: "2700.0", total: "32700.0"},
  {user_id: 2, product_id: 19, quantity: 1, subtotal: "5.0", tax: "0.45", total: "5.45"},
  {user_id: 2, product_id: 17, quantity: 1, subtotal: "22000.0", tax: "1980.0", total: "23980.0"},
  {user_id: 2, product_id: 13, quantity: 1, subtotal: "50000.0", tax: "4500.0", total: "54500.0"},
  {user_id: 2, product_id: 17, quantity: 1, subtotal: "22000.0", tax: "1980.0", total: "23980.0"},
  {user_id: 2, product_id: 13, quantity: 1, subtotal: "50000.0", tax: "4500.0", total: "54500.0"},
  {user_id: 2, product_id: 14, quantity: 1, subtotal: "30000.0", tax: "2700.0", total: "32700.0"}
])
Product.create!([
  {title: "Tyrannosaurus Rex", price: "50000.0", description: "Named from the Greek words meaning tyrant lizard, T-Rex is the king of dinosaurs.", quantity: "4", supplier_id: 1, user_id: nil},
  {title: "Velociraptor", price: "30000.0", description: "The famed Velociraptor, though inaccurately portrayed in Jurassic Park movies, was something to be feared, despite its turkey-sized frame.", quantity: "15", supplier_id: 1, user_id: nil},
  {title: "Triceratops", price: "27000.0", description: "The humble Triceratops is the state dinosaur of Wyoming. If its good enough for Wyoming, its good enough for you!", quantity: "7", supplier_id: 1, user_id: nil},
  {title: "Apatosaurus", price: "18500.0", description: "Formerly miscategorized as Brontosaurus, the Apatosaurus is an oft misunderstood but much-loved dinosaur, hoping to find a home full of love.", quantity: "14", supplier_id: 2, user_id: nil},
  {title: "Ankylosaurus", price: "22000.0", description: "Have kids? Ankylosaurus is the gentle giant that you can count on to protect your loved ones.", quantity: "8", supplier_id: 2, user_id: nil},
  {title: "Iguanodon", price: "27500.0", description: "As made famous by the 2000 Disney animated movie called Dinosaur, the Iguanodon also helped to inspire the creation of Godzilla. ", quantity: "11", supplier_id: 1, user_id: nil},
  {title: "Meme", price: "5.0", description: "This is a meme.", quantity: "9", supplier_id: 2, user_id: nil}
])
Supplier.create!([
  {name: "Jurassic Park", email: "info@jurassicpark.com", phone: "(123)234-2345"},
  {name: "Dino Wholesale", email: "allofthedinos@wholesale.com", phone: "(234)345-4564"}
])
