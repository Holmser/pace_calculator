require_relative '../distance'

describe Distance do
  it "requires an argument" do
    expect { Distance.new }.to raise_error(ArgumentError)
  end

  it "should be an instance of Distance" do
    #@distance = Distance.new(12)
    @distance = Distance.new(12)
    expect(@distance).to be_an_instance_of Distance
  end

  it "should convert miles to km" do
    @distance = Distance.new(26.2)
    expect(@distance.to_km).to eq(42.16)
  end

  it "should convert km to miles" do
    @distance = Distance.new(10, false)
    expect(@distance.to_m).to eq(6.21)
  end

  it "should parse time input to hash" do
    @distance = Distance.new(10, false)
    expect(@distance.parse_time("00:55:54")).to eq(:hour => 0, :min => 55, :sec => 54)
  end

  it "should parse time with only minutes and seconds" do
    @distance = Distance.new(10, false)
    expect(@distance.parse_time("55:54")).to eq(:hour => 0, :min => 55, :sec => 54)
  end

  it "should convert h:m:s to seconds" do
    expect (Distance.time_to_s("1:02:03")).to eq(3723)
  end

  # it "should calculate pace from finish time" do
  #   @distance = Distance.new(10, false)
  #   expect(@distance.pace_from_time("00:55:54")).to eq("9:00")
  # end

end
