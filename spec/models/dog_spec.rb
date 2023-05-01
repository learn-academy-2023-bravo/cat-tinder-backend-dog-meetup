require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe "GET /index" do 
    it "gets a list of dogs" do
      Dog.create(
        name: 'Karter',
        age: 3,
        enjoys: 'Laying on a heating pad, and using the bathroom in the house. Ya know, casual stuff.',
        image: 'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-08/Yorkie-Poo-Yorkipoo.jpg?itok=EsHlkqjB'
      )

      # make a request
      get '/dogs'

      dog = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(dog.length). to eq 1
    end
  end

  describe "POST /create" do
    it "creates a dog" do
      dog_params = {
        dog: {
          name: 'Khaleesi',
          age: 1,
          enjoys: 'Laying on her bed.',
          image: 'https://dogtime.com/assets/uploads/gallery/korean-jindo-dog-breed-pictures/korean-jindo-dog-breed-pictures-10.jpg'
        }
      }

      # Send the request to the server
      post '/dogs', params: dog_params

      # Assure that we get a success back
      expect(response).to have_http_status(200)

      # Look up the dog we expect to be created in the db
      dog = Dog.first

      # Assure that the created dog has the correct attributes
      expect(dog.name).to eq 'Khaleesi'
      expect(dog.age).to eq 1
      expect(dog.enjoys).to eq 'Laying on her bed.'

    end
  end
end
