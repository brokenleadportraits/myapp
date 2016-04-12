# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:image_url => "duck1.jpg", :name => "Basic Duckie", :description => "A standard Wubba Duckie.", :color => "Yellow", :price => 4)

Product.create(:image_url => "duck2.jpg", :name => "Wubba Cluckie", :description => "Duck or chicken? You decide.", :color => "Brown", :price => 8)

Product.create(:image_url => "duck3.png", :name => "Luckie Duckie", :description => "Someone just got lucky with tis Wubba Duckie!", :color => "Pink", :price => 10)

Product.create(:image_url => "duck4.jpg", :name => "Bat Duck", :description => "The hero your bath deserves!", :color => "Black", :price => 12)

Product.create(:image_url => "duck5.jpg", :name => "Spider Duck", :description => "Spider Duck can swim. Spiderman can't.", :color => "Red", :price => 12)

Product.create(:image_url => "duck6.jpg", :name => "A Duck", :description => "It's a Duck. A wubba one. A wubba Duckie.", :color => "Yellow", :price => 1000)

