require_relative "../distance.rb"

describe Pace do
  it "should return an instance of Pace" do
    @pace = Pace.new
    expect(@pace).to be_an_instance_of Pace
  end

end
