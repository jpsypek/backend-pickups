require 'rails_helper'

RSpec.describe User, type: :model do

  it "has many events" do
    should have_many(:events)
  end

  subject {
    described_class.new(email: "test@gmail.com", password: "password")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a duplicate email" do
    user = User.create(email: "test@gmail.com", password: "password")
    duplicate = User.create(email: "test@gmail.com", password: "password")
    expect(duplicate).to_not be_valid
  end

end
