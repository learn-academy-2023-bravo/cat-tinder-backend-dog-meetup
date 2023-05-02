require 'rails_helper'

RSpec.describe Dog, type: :model do

  it "should validate name exists in the entry" do
    dog = Dog.create(age: 3, enjoys: 'sleeping and more sleeping', image: 'somecatpic.org')
    expect(dog.errors[:name]).to_not be_empty
  end

  it "should validate age exists in the entry" do
    dog = Dog.create(name: 'Buster', enjoys:'napping every day', image:'somepic.com')
    expect(dog.errors[:age]).to_not be_empty
  end

  it "Should validate enjoys exists" do
    dog = Dog.create(name:'Buster', age:5, image:'something.com')
    expect(dog.errors[:enjoys]).to_not be_empty
  end

  it "Should validate image exists" do
    dog = Dog.create(name: 'Buster', age:5, enjoys:'napping every day')
    expect(dog.errors[:image]).to_not be_empty
  end

  it "Should validate length of enjoyment to >= 10 characters" do
    dog = Dog.create(name: 'Buster', age:5, enjoys:'napping', image:'something.com')
    expect(dog.errors[:enjoys]).to_not be_empty
  end


end
