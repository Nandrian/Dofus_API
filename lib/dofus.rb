require 'bundler'

Bundler.require

class Larves
  def initialize
  # We recover all and get what we need
  @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
end

# Save as JSON
  def larves_json
    File.open("./db/Larves.json", 'w') do |file|
    file.write(@type) # Write into Json file
    end
  end
end


class Monstres_des_cavernes
  def initialize
  @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
end

# Save as JSON
  def cave_monsters_json				
    File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
    file.write(@type) # Write into Json file
    end	
  end
end

class Monstres_des_plaines
  def initialize
  @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
end

# Save as JSON
  def herb_plain_monsters_json
    File.open("./db/Monstres_des_Plaines_herbeuses.json", 'w') do |file|
    file.write(@type) # Write into Json file
    end
  end
end