#! /usr/bin/env ruby
# This is a simple pace calculator because I get sick of
# googling pace times and it seemed like a good excercise.

class Distance
  attr_writer :miles, :km

  def initialize (distance, miles = true)
    @finish_time = {}
    @pace = {}

    if miles
      @miles = distance
      @km = self.miles_to_km(@miles)
    else
      @km = distance
      @miles = km_to_miles(@km)
    end
  end

  #converts km to miles
  def km_to_miles(km)
    (km * 0.621371).round(2)
  end

  # converts miles to km
  def miles_to_km(miles)
    (miles * 1.60934).round(2)
  end

  # returns miles
  def to_m
    @miles
  end

  # returns km
  def to_km
    @km
  end

  def parse_time(time)
    hms = time.split(":").map{|s| s.to_i }
    hms.unshift(0) if hms.size < 3
    {
      :hour  => hms[0],
      :min   => hms[1],
      :sec   => hms[2],
    }
  end

  def self.time_to_s(time)
    if time.class == Hash

  def pace_from_time(finish_time)
    #f
    #puts split
  end
end
