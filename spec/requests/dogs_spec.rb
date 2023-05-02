require 'rails_helper'

RSpec.describe "Dogs", type: :request do
  describe "GET /index" do
    it "gets a list of dogs" do 
      Dogs.create(
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
  

end
