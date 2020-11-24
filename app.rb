require_relative 'lib/dofus'

# Run the program to have all "larves"
larves = Larves.new
larves.larves_json
puts "Finish getting all Larves"

# Run the program to have "Monstres des cavernes"
monstres1 = Monstres_des_cavernes.new
monstres1.cave_monsters_json
puts "Finish getting all Monstres des cavernes"

# Run the program to have "Monstres des plaines"
monstre2 = Monstres_des_plaines.new
monstre2.herb_plain_monsters_json
puts "Finish getting all Monstres des Plaines herbeuses"