### monster.rb - run this file

# Monster class
class Monster
	include Comparable
	attr_accessor :habitate, :threat_level, :name

	@@monster_count = 0
	THREAT_LEVEL = [:low, :medium, :high, :midnight].freeze

	def initialize(threat_level = :medium, name = "Noname")
    @habitate = "Cave of Caerbannog"
    if THREAT_LEVEL.include? threat_level
	    @threat_level = threat_level
	  else
	  	raise "cannot create monster - invalid threat level friendly"
	  end
	  @name = name
    @@monster_count += 1
    p "Rawr!"
    p "#{@@monster_count} monsters now roam the world!"
  end

  def habitat
  	p "tundra"
  end

  def self.count
  	p @@monster_count
  end

  def <=> another
  	THREAT_LEVEL.index(threat_level) <=> THREAT_LEVEL.index(another.threat_level)
  end

  def self.fight(mon1, mon2)
  	if mon1 == mon2 then return mon2 end
  	mon1 > mon2 ? mon1 : mon2
	end
end

alien = Monster.new(:high)
alien.habitat
alien.threat_level

zombie = Monster.new(:medium)

# p Monster::THREAT_LEVEL
p Monster.fight(alien, zombie)

# Zombie class



# Werewolf class

 

# Flying module

  

# Vampire class




### "Driver" Code Area

