class Dog < ApplicationRecord
    validates :name, :age, presence: true
    validates :enjoys, length: {minimum: 10}
end
