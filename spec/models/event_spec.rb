require 'rails_helper'

RSpec.describe Event, type: :model do

  it "has many users" do
    should have_many(:users)
  end

  subject {
    described_class.new(time: DateTime.now, latitude: 30, longitude: -105)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a time" do
    subject.time = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a latitude" do
    subject.latitude = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a longitude" do
    subject.longitude = nil
    expect(subject).to_not be_valid
  end
  
end
