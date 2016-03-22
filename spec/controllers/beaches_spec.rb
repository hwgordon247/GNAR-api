require 'rails_helper'

describe BeachesController do
  describe 'GET /beaches' do
    it 'returns all beaches' do
      FactoryGirl.create :beach, name: 'Random', longitude: 2.1, latitude: 5.7
      FactoryGirl.create :beach, name: 'Another', longitude: 4.1, latitude: 9.7

      get :index
      json = JSON.parse(response.body)

      expect(json[0]).to include('name' => 'Random')
      expect(json[1]).to include('longitude' => 4.1)
    end
  end
end
