module Flying
  def fly
    p "#{@name || "A mysterious creature"} soars across the sky"
  end
end

class Monster
  attr_accessor :threat_level, :habitat, :name
  attr_reader :class_description

  THREAT_LEVEL = [:low, :medium, :high, :midnight].freeze

  def initialize(threat_level=:medium)
  	@threat_level = threat_level
    @class_description = "A scary monster!"
  end

  def get_dangerous
    THREAT_LEVEL.index(@threat_level) < 3 ? @threat_level = THREAT_LEVEL[THREAT_LEVEL.index(@threat_level)+1] : THREAT_LEVEL[3]
  end
end

class Zombie < Monster

  def initialize(threat_level=:medium, name="Noname")
    @habitat = "graveyard"
    @name = name
    @threat_level = threat_level
    @class_description = "A scary zombie!"
  end
end

class Warewolf < Monster

  def initialize(threat_level=:low, name="Noname")
    @name = name
    @threat_level = threat_level
    @class_description = "A scary warewolf!"
  end

  def update_threat_level is_full_moon
    if is_full_moon then get_dangerous end
  end
end

class Vampire < Monster
  include Flying
  def initialize(threat_level=:medium, name="Nameless Vampire")
    @name = name
    @class_description = "An elegant Vampire"
  end
end



rob = Zombie.new
p rob.threat_level
rob.get_dangerous
p rob.threat_level
p rob.name
rob.name = "Zombie Rob"
p rob.name
teen_wolf = Warewolf.new
p teen_wolf.threat_level
teen_wolf.update_threat_level(true)
p teen_wolf.threat_level
p teen_wolf.class_description
victor = Vampire.new
victor.fly