class Rover
  attr_accessor :name, :start_point, :end_point

  def initialize(name, start_point, end_point)
    @name = name
    @start_point = start_point
    @end_point = end_point
  end
end
