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

puts "Creating 10 games..."
Game.create(
  name: 'The Legend Of Zelda Ocarina Of Time',
  platform: 'Nintendo 64',
  picture: 'https://assets-prd.ignimgs.com/2021/12/07/zeldaoot-ignart-1638901927766.jpg',
  price: 5,
  user_id: ana.id
)
Game.create(
  name: "Tony Hawk's Pro Skater 2",
  platform: 'Playstation',
  picture: 'https://assets-prd.ignimgs.com/2021/12/17/tony-hawk-prp-skater-2-1639763193495.jpg',
  price: 5,
  user_id: ana.id
)
Game.create(
  name: "Grand Theft Auto IV",
  platform: 'Playstation 3',
  picture: 'https://assets-prd.ignimgs.com/2022/01/07/gta-4-button-char-v2-1641587906428.jpg',
  price: 4,
  user_id: ana.id
)
Game.create(
  name: "Soulcalibur",
  platform: 'Dreamcast',
  picture: 'https://assets-prd.ignimgs.com/2021/12/14/soulcalibur-1639521545469.jpg',
  price: 4,
  user_id: bob.id
)
Game.create(
  name: "Super Mario Galaxy",
  platform: 'Wii',
  picture: 'https://assets-prd.ignimgs.com/2020/09/04/super-mario-galaxy-1-button-1599258841533.jpg',
  price: 5,
  user_id: bob.id
)
Game.create(
  name: "Red Dead Redemption 2",
  platform: 'Xbox One',
  picture: 'https://assets1.ignimgs.com/2016/10/18/red-dead-redemption-2-buttonjpg-f9ad35.jpg',
  price: 5,
  user_id: bob.id
)
Game.create(
  name: "Perfect Dark",
  platform: 'Nintendo 64',
  picture: 'https://assets-prd.ignimgs.com/2020/09/04/perfect-dark-64-button-orig-1599255765856.jpg',
  price: 3,
  user_id: jon.id
)
Game.create(
  name: "Super Mario Bros",
  platform: 'Nintendo',
  picture: 'https://assets-prd.ignimgs.com/2022/01/08/smb-nesart-1641603921866.jpg',
  price: 3,
  user_id: jon.id
)
Game.create(
  name: "The Last Of Us",
  platform: 'Playstation',
  picture: 'https://assets-prd.ignimgs.com/2021/12/07/tlou-1638842419547.jpg',
  price: 5,
  user_id: jon.id
)
Game.create(
  name: "Mega Man",
  platform: 'Game Gear',
  picture: 'https://assets-prd.ignimgs.com/2022/04/05/megamangg-1649185884153.jpg',
  price: 3,
  user_id: jon.id
)
puts "10 games created!"
