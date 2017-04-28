class Point

  attr_accessor :longitude, :latitude

  def initialize(longitude, latitude)
    @longitude = longitude
    @latitude = latitude
  end

  def mongoize
    {:type=>"Point", :coordinates=>[@longitude, @latitude]}
  end

  def self.demongoize(point_hash)
    Point.new(point_hash[:coordinates][0], point_hash[:coordinates][1])
  end
end
