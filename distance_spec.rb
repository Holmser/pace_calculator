require_relative 'pace'
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


end
