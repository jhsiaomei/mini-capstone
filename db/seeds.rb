# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

Product.create!([
{ title: 'Tyrannosaurus Rex', price: 50000, description: 'Named from the Greek words meaning ''tyrant lizard'', T-Rex is the king of dinosaurs.', quantity: '4', created_at: '2015-11-12 02:29:10.862400', updated_at: '2015-11-19 00:37:50.063447', image: 'http://vignette2.wikia.nocookie.net/monsterhunterfanon/images/1/1f/Trex.png/revision/latest?cb=20150615193630' },
{ title: 'Velociraptor', price: 30000, description: 'The famed Velociraptor, though inaccurately portrayed in Jurassic Park movies, was something to be feared, despite its turkey-sized frame.', quantity: '15', created_at: '2015-11-12 02:32:12.062539', updated_at: '2015-11-19 00:37:56.966622', image: 'http://img1.wikia.nocookie.net/__cb20150420213210/jurassicpark/images/1/12/Velociraptor-detail-header.png' },
{ title: 'Triceratops', price: 27000, description: 'The humble Triceratops is the state dinosaur of Wyoming. If it''s good enough for Wyoming, it''s good enough for you!', quantity: '7', created_at: '2015-11-12 02:35:52.907590', updated_at: '2015-11-19 00:38:03.730576', image: 'http://res.cloudinary.com/dk-find-out/image/upload/q_80,w_960/Triceratops_left_cepidt.png' },
{ title: 'Apatosaurus', price: 18500, description: 'Formerly miscategorized as ''Brontosaurus'', the Apatosaurus is an oft misunderstood but much-loved dinosaur, hoping to find a home full of love.', quantity: '14', created_at: '2015-11-12 02:38:20.292092', updated_at: '2015-11-19 00:38:15.358001', image: 'http://vignette3.wikia.nocookie.net/dino/images/7/7f/Apatosaurus_LeCire.png/revision/latest?cb=20131222162418' },
{ title: 'Ankylosaurus', price: 22000, description: 'Have kids? Ankylosaurus is the gentle giant that you can count on to protect your loved ones.', quantity: '8', created_at: '2015-11-12 02:41:02.269535', updated_at: '2015-11-19 00:38:22.870003', image: 'http://img3.wikia.nocookie.net/__cb20150115010533/jurassicpark/images/e/e6/Ankylosaurus_Render.png' },
{ title: 'Iguanodon', price: 27500, description: 'As made famous by the 2000 Disney animated movie called ''Dinosaur'', the Iguanodon also helped to inspire the creation of Godzilla. ', quantity: '11', created_at: '2015-11-15 22:07:57.605552', updated_at: '2015-11-19 00:38:30.093004', image: 'http://res.cloudinary.com/dk-find-out/image/upload/q_70,c_fit,w_1200,h_630/iguanodon_gwa3q7.jpg' }
])
