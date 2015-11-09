#! /usr/bin/env ruby
# This is a simple pace calculator because I get sick of
# googling pace times and it seemed like a good excercise.

require 'time'

class Race
  attr_writer :miles, :km

  def initialize (distance, miles = true)
    if miles
      @miles = distance
      @km = self.miles_to_km(@miles)
    else
      @km = distance
      @miles = km_to_miles(@km)
    end
  end

  def km_to_miles(km)
    (km * 0.621371).round(2)
  end

  def miles_to_km(miles)
    (miles * 1.60934).round(2)
  end

  def to_m
    @miles
  end

  def to_km
    @km
  end

end

bloomsday = Race.new(12, false)
puts "Bloomsday is #{bloomsday.to_m} miles long"
marathon = Race.new(26.2)
puts "A marathon is #{marathon.to_km} km long"
