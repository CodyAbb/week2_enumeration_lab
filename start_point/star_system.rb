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

end
