class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0

  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new “#{make}”."
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: “#{make}”."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

Car.add_make('Honda')
Car.add_make('Ford')
honda1 = Car.new('Honda')
ford1 = Car.new('Ford')
honda2 = Car.new('Honda')

puts "Counting cars of same make as honda2:"
puts "There are #{honda2.make_mates}"

puts "Counting cars of same make as ford1:"
puts "There are #{ford1.make_mates}"

puts honda1.make_mates

# And this will cause an exception:
#nope = Car.new('Poop')

