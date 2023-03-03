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
  address: "Barcelona, Spain",
  description: "The Legend of Zelda: Ocarina of Time is an action-adventure game developed and published by Nintendo for the Nintendo 64. It was released in Japan and North America in November 1998 and in PAL regions the following month. Ocarina of Time is the first game in The Legend of Zelda series with 3D graphics."
)
game.picture.attach(io: file, filename: 'zelda_ocarina.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2021/12/17/tony-hawk-prp-skater-2-1639763193495.jpg')
game = Game.new(
  name: "Tony Hawk's Pro Skater 2",
  platform: 'Playstation 1',
  price: 5,
  user_id: ana.id,
  address: "Tokyo, Japan",
  description: "Tony Hawk's Pro Skater 2 is a skateboarding video game developed by Neversoft and published by Activision. It is the second installment in the Tony Hawk's series of sports games and was released for the PlayStation in 2000, with subsequent ports to Microsoft Windows, Game Boy Color, and Dreamcast the same year."
)
game.picture.attach(io: file, filename: 'thps2.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2022/01/07/gta-4-button-char-v2-1641587906428.jpg')
game = Game.new(
  name: 'Grand Theft Auto IV',
  platform: 'Playstation 3',
  price: 4,
  user_id: ana.id,
  address: "Buenos Aires, Argentina",
  description: "Grand Theft Auto IV is a 2008 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the sixth main entry in the Grand Theft Auto series, following 2004's Grand Theft Auto: San Andreas, and the eleventh instalment overall."
)
game.picture.attach(io: file, filename: 'gta_iv.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2021/12/14/soulcalibur-1639521545469.jpg')
game = Game.new(
  name: 'Soulcalibur',
  platform: 'Dreamcast',
  price: 4,
  user_id: bob.id,
  address: "12 Kentish Town Rd, London NW5 2AB, United Kingdom",
  description: "Soulcalibur is a weapon-based fighting video game franchise by Bandai Namco Entertainment. There are seven main installments of video games and various media spin-offs, including music albums and a series of manga books."
)
game.picture.attach(io: file, filename: 'soulcalibur.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2020/09/04/super-mario-galaxy-1-button-1599258841533.jpg')
game = Game.new(
  name: 'Super Mario Galaxy',
  platform: 'Wii',
  price: 5,
  user_id: bob.id,
  address: "South Kensington, London",
  description: "Super Mario Galaxy is a 2007 platform game developed and published by Nintendo for the Wii. It is the third 3D game in the Super Mario series."
)
game.picture.attach(io: file, filename: 'super_mario_galaxy.png', content_type: 'image/png')
game.save

file = URI.open('https://assets1.ignimgs.com/2016/10/18/red-dead-redemption-2-buttonjpg-f9ad35.jpg')
game = Game.new(
  name: 'Red Dead Redemption 2',
  platform: 'Xbox One',
  price: 5,
  user_id: bob.id,
  address: "Shoderitch, London",
  description: "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and a prequel to the 2010 game Red Dead Redemption."
)
game.picture.attach(io: file, filename: 'read_dead_redemption.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2020/09/04/perfect-dark-64-button-orig-1599255765856.jpg')
game = Game.new(
  name: 'Perfect Dark',
  platform: 'Nintendo 64',
  price: 3,
  user_id: jon.id,
  address: "Paris, France",
  description: "Perfect Dark is a 2000 first-person shooter developed and published by Rare for the Nintendo 64. The first game of the Perfect Dark series, it follows Joanna Dark, an agent of the Carrington Institute research centre, as she attempts to stop an extraterrestrial conspiracy by rival corporation dataDyne."
)
game.picture.attach(io: file, filename: 'perfect_dark.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2022/01/08/smb-nesart-1641603921866.jpg')
game = Game.new(
  name: 'Super Mario Bros',
  platform: 'Nintendo',
  price: 3,
  user_id: jon.id,
  address: "7 Rue de Bonnel, 69003 Lyon, France",
  description: "Mario Bros. is a 1983 arcade game developed and published for arcades by Nintendo. It was designed by Shigeru Miyamoto and Gunpei Yokoi, Nintendo's chief engineer. Italian twin brother plumbers Mario and Luigi exterminate creatures emerging from the sewers by knocking them upside-down and kicking them away."
)
game.picture.attach(io: file, filename: 'super_mario_bros.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2021/12/07/tlou-1638842419547.jpg')
game = Game.new(
  name: 'The Last Of Us',
  platform: 'Playstation 1',
  price: 5,
  user_id: jon.id,
  address: "Sevilla, Spain",
  description: "The Last of Us is an action-adventure survival horror game franchise created by Naughty Dog and Sony Interactive Entertainment. The series is set in a post-apocalyptic United States ravaged by cannibalistic creatures infected by a mutated fungus in the genus Cordyceps."
)

game.picture.attach(io: file, filename: 'the_last_of_us.png', content_type: 'image/png')
game.save

file = URI.open('https://assets-prd.ignimgs.com/2022/04/05/megamangg-1649185884153.jpg')
game = Game.new(
  name: 'Mega Man',
  platform: 'Game Gear',
  price: 3,
  user_id: jon.id,
  address: "Besares 860, Chacras de Coria, Mendoza, Argentina",
  description: 'Mega Man, known as Rockman in Japan, is a Japanese science fiction video game franchise created by Capcom, starring a series of robot characters each known by the moniker "Mega Man".'
)
game.picture.attach(io: file, filename: 'mega_man.png', content_type: 'image/png')
game.save

puts "10 games created!"
