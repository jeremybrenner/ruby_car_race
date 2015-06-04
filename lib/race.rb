require_relative 'car'

class Race
	attr_accessor :cars, :winner, :loser
  def initialize
  	@cars = []
  	2.times{@cars.push(Car.new)}
  	@cars.each{|car| car.speed = rand(100)}
  end

  def winner
  	@winner = @cars.first.speed > @cars.last.speed ? @cars[0] : @cars[1]
  end

  def loser
  	@loser = @cars.first.speed < @cars.last.speed ? @cars[0] : @cars[1]
  end

end
