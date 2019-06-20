require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is valid with valid attributes" do
    expect(Event.new(time: DateTime.now, latitude: 30, longitude: -105)).to be_valid
  end
  it "is not valid without valid attributes" do
    expect(Event.new).to_not be_valid
  end
end
