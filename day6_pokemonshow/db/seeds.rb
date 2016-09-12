# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.create( { name: "Bulbasaur", cp: rand(10...1200) , image_url: "http://49.media.tumblr.com/5d7d9b9d86f34533462957f8936e377b/tumblr_o5lgspcHdi1rl04amo1_400.gif" } )
Pokemon.create( { name: "Squirtle", cp: rand(10...1200) , image_url: "http://45.media.tumblr.com/4d5af1975806d9eeab9735145c483254/tumblr_o5lgspcHdi1rl04amo7_400.gif" } )
Pokemon.create( { name: "Charmander", cp: rand(10...1200) , image_url: "http://45.media.tumblr.com/72f0311f0e7603dfb7639f6864701804/tumblr_o5lgspcHdi1rl04amo4_400.gif" } )
