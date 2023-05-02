require 'rails_helper'

RSpec.describe "Dogs", type: :request do
  describe "GET /index" do
    it "gets a list of dogs" do 
      Dog.create(
        name: 'Karter',
        age: 3,
        enjoys: 'Laying on a heating pad, and using the bathroom in the house. Ya know, casual stuff.',
        image: 'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-08/Yorkie-Poo-Yorkipoo.jpg?itok=EsHlkqjB'
      )
      # make our request to the specific endpoints
      get '/dogs'

      # we want our response to be formatted in JSON
      dog = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(dog.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a dog" do
      dog_params = {
        dog: {
          name: 'Karter',
          age: 3,
          enjoys: 'Laying on a heating pad, and using the bathroom in the house. Ya know, casual stuff.',
          image: 'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-08/Yorkie-Poo-Yorkipoo.jpg?itok=EsHlkqjB'
        }
      }
      # make the request to the specific endpoints
      post "/dogs", params: dog_params
      expect(response).to have_http_status(200)
      dog = Dog.first
      expect(dog.name).to eq 'Karter'
      expect(dog.age).to eq 3
      expect(dog.enjoys).to eq 'Laying on a heating pad, and using the bathroom in the house. Ya know, casual stuff.'
      expect(dog.image).to eq 'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-08/Yorkie-Poo-Yorkipoo.jpg?itok=EsHlkqjB'
    end
  end
describe "cannot create a dog without valid attributes" do
  it "cannot create a dog without a name" do
    dog_params = {
      dog: {
        age: 5,
        enjoys: 'Napping forever',
        image: 'cutelilpup.jpeg'
      }
    }

    post '/dogs', params: dog_params
    dog = JSON.parse(response.body)
    expect(response).to have_http_status(422)
    expect(dog["name"]).to include "can't be blank"
  end
  it "cannot create a dog without an age" do
    dog_params = { 
      dog: {
        name: 'Buster',
        enjoys: 'Napping forever',
        image: 'cutelilpup.jpeg'
        }
      }
    post '/dogs', params: dog_params
    dog = JSON.parse(response.body)
    expect(response).to have_http_status(422)
    expect(dog["age"]).to include "can't be blank"
  end
  it "cannot create a dog without an enjoyment" do
    dog_params = {
      dog: {
        name: 'Buster',
        age: 5,
        image: 'cutelilpup.jpeg'
        }
      }
    post '/dogs', params: dog_params
    dog = JSON.parse(response.body)
    expect(response).to have_http_status(422)
    expect(dog["enjoys"]).to include "can't be blank"
  end
  it "cannot create a dog without an image" do
    dog_params = {
      dog: {
        name: 'Buster',
        age: 5,
        enjoys: 'Napping forever'
        }
      }
    post '/dogs', params: dog_params
    dog = JSON.parse(response.body)
    expect(response).to have_http_status(422)
    expect(dog["image"]).to include "can't be blank"
  end
end
end
