class Mage
  SCHOOL_OF_WIZARDRY = [ "Hogwarts", "General Assembly",
    "Xaviers School For The Gifted", "Jedi Training Academy",
    "a Local Community College", "French Culinary Institute"
  ]
  def initialize(name, gender, mage_class, weapon)
    @name = name
    @gender = gender
    @mage_class = mage_class
    @weapon = weapon
    @satchel = {
      spells: [],
      ammo: 0,
      potions: 0
    }
    @origins = SCHOOL_OF_WIZARDRY.sample
  end

def creationOutput
  print "\n"
  puts "

Well { #{@name} } you're a { #{@mage_class} }, in battle they prefer
the mighty { #{@weapon} }, an excellent weapon indeed. I see here you
attended { #{@origins} } where you received a B.A in Fine Arts.
I'm sure your degree will prepare you for battle as readily as it did
the job market.

  "
end

end
