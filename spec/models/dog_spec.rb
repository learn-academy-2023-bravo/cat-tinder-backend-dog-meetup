require 'rails_helper'

RSpec.describe Dog, type: :model do

  it "should validate name exists in the entry" do
    cat = Dog.create(age: 3, enjoys: 'sleeping and more sleeping', image: 'somecatpic.org')
    expect(dog.errors[:name]).to_not be_empty
  end

  it "should validate age exists in the entry" do
    dog = Dog.create(name: 'Buster', enjoys:'napping', image:'somepic.com')
    expect(dog.errors[:age]).to_not be_empty
  end

  it "Should validate enjoys exists" do
    dog = Dog.create(name:'Buster', age:5, image:'something.com')
    expect(dog.errors[:enjoys]).to_not be_empty
  end


end
