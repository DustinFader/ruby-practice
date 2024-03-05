class MyCar
  attr_accessor :color, :speed
  attr_reader :year
  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(accelerate)
    @speed += accelerate
  end

  def brake(slow_down)
    self.speed - slow_down < 0 ? self.speed = 0 : self.speed -= slow_down
  end

  def current_speed
    puts "Currently going #{@speed} MPH"
  end

  def shut_down
    self.speed = 0
    puts 'Aaaannndd, parked!'
  end

  def spray_paint(add_paint)
    self.color = add_paint
    puts "Spray painted the car to look #{add_paint}. Looks pretty good."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas" 
  end

  def to_s
    # using self makes it recursive. Going into a loopdy loop lol. Stack be deep. Stack be infinite. Stack be Stack.
    "This be #{color}"
  end
end


chevrolette = MyCar.new(1997, 'chevy lumina', 'white')
# test
MyCar.gas_mileage(13, 351)

puts chevrolette

# another Example
class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts bob