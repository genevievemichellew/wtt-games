require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning Database'
Game.destroy_all
User.destroy_all

puts 'Creating Users'
ana = User.create(
  email: 'ana@ana.com',
  password: '12345678',
  first_name: 'Ana',
  last_name: 'Fa'
)

bob = User.create(
  email: 'bob@bob.com',
  password: '12345678',
  first_name: 'Bob',
  last_name: 'Na'
)

jon = User.create(
  email: 'jon@snow.com',
  password: '12345678',
  first_name: 'Jon',
  last_name: 'Snow'
)

puts 'Users created.'
puts "Creating 10 games..."

file = URI.open('https://assets-prd.ignimgs.com/2021/12/07/zeldaoot-ignart-1638901927766.jpg')
game = Game.new(
  name: 'The Legend Of Zelda: Ocarina Of Time',
  platform: 'Nintendo 64',
  price: 5,
  user_id: ana.id,
  address: "Barcelona, Spain"
)
game.picture.attach(io: file, filename: 'zelda_ocarina.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2021/12/17/tony-hawk-prp-skater-2-1639763193495.jpg')
game = Game.new(
  name: "Tony Hawk's Pro Skater 2",
  platform: 'Playstation 1',
  price: 5,
  user_id: ana.id,
  address: "Tokio, Japan"
)
game.picture.attach(io: file, filename: 'thps2.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2022/01/07/gta-4-button-char-v2-1641587906428.jpg')
game = Game.new(
  name: 'Grand Theft Auto IV',
  platform: 'Playstation 3',
  price: 4,
  user_id: ana.id,
  address: "Buenos Aires, Argentina"
)
game.picture.attach(io: file, filename: 'gta_iv.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2021/12/14/soulcalibur-1639521545469.jpg')
game = Game.new(
  name: 'Soulcalibur',
  platform: 'Dreamcast',
  price: 4,
  user_id: bob.id,
  address: "Candem Town, London"
)
game.picture.attach(io: file, filename: 'soulcalibur.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2020/09/04/super-mario-galaxy-1-button-1599258841533.jpg')
game = Game.new(
  name: 'Super Mario Galaxy',
  platform: 'Wii',
  price: 5,
  user_id: bob.id,
  address: "South Kensington, London"
)
game.picture.attach(io: file, filename: 'super_mario_galaxy.png', content_type: 'image/png')
game.save

file = URI.open('https://assets1.ignimgs.com/2016/10/18/red-dead-redemption-2-buttonjpg-f9ad35.jpg')
game = Game.new(
  name: 'Red Dead Redemption 2',
  platform: 'Xbox One',
  price: 5,
  user_id: bob.id,
  address: "Shoderitch, London"
)
game.picture.attach(io: file, filename: 'read_dead_redemption.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2020/09/04/perfect-dark-64-button-orig-1599255765856.jpg')
game = Game.new(
  name: 'Perfect Dark',
  platform: 'Nintendo 64',
  price: 3,
  user_id: jon.id,
  address: "Paris, France"
)
game.picture.attach(io: file, filename: 'perfect_dark.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2022/01/08/smb-nesart-1641603921866.jpg')
game = Game.new(
  name: 'Super Mario Bros',
  platform: 'Nintendo',
  price: 3,
  user_id: jon.id,
  address: "Lyon, France"
)
game.picture.attach(io: file, filename: 'super_mario_bros.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2021/12/07/tlou-1638842419547.jpg')
game = Game.new(
  name: 'The Last Of Us',
  platform: 'Playstation 1 (PSONE)',
  price: 5,
  user_id: jon.id,
  address: "Sevilla, Spain"
)

game.picture.attach(io: file, filename: 'the_last_of_us.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2022/04/05/megamangg-1649185884153.jpg')
game = Game.new(
  name: 'Mega Man',
  platform: 'Game Gear',
  price: 3,
  user_id: jon.id,
  address: "Svalvard, Norway"
)
game.picture.attach(io: file, filename: 'mega_man.png', content_type: 'image/png')
game.save

puts "10 games created!"
