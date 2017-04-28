class Point

  attr_accessor :longitude, :latitude

  def initialize(longitude, latitude)
    @longitude = longitude
    @latitude = latitude
  end

  def mongoize
    {:type=>"Point", :coordinates=>[@longitude, @latitude]}
  end
end
