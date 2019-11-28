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

  def get_largest_planet
    return @planets.max_by{|planet| planet.diameter}
  end

  def get_smallest_planet
    return @planets.min_by{|planet| planet.diameter}
  end

  def get_planets_with_no_moons
    return @planets.find_all{|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(search_number)
    many_moon_planets =  @planets.find_all{|planet| planet.number_of_moons > search_number}
    many_moon_planets.map{|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    close_planets = @planets.find_all{|planet| planet.distance_from_sun < distance}
    return close_planets.length
  end

  def get_total_number_of_moons
    planet_array = @planets.map{|planet| planet.number_of_moons}
    total_moons = planet_array.reduce do |running_total, planet|
      running_total + planet
    end
    return total_moons
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    sorted_planets = @planets.sort_by{|planet| planet.distance_from_sun}
    return sorted_planets.map{|planet| planet.name}
  end

  def get_planet_names_sorted_by_size_decreasing
    sorted_planets = @planets.sort_by{|planet| planet.diameter}
    return sorted_planets.map{|planet| planet.name}.reverse
  end

end
