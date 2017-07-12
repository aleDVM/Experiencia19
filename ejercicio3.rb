class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    print 'El motor se ha encendido!'
  end
end
class Car < Vehicle
  @@instance = 0
  def initialize()
    @@instance += 1
  end
  def self.get_instances
    @@instance
  end
end
10.times do
  print Car.new
end
puts
puts "The number of instances are #{Car.get_instances}"
