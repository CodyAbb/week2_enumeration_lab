class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end


  def count
    planet_array = []
    @planets.each{|planet| planet_array << planet}
    return planet_array.length
  end

  def planet_names
    planet_array = []
    @planets.each{|planet| planet_array << planet.name}
    return planet_array
  end

  def get_planet_by_name(search_planet)
    return @planets.find{|planet| planet.name == search_planet}
  end

end
