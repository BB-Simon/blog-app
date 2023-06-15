require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "renders a successful response" do
      get users_path
      expect(response).to be_successful
    end

    it 'Should response with correct status' do
      get users_path
      expect(response.status).to eq(200)
    end

    it 'Should render correct placeholder text' do
      get users_path
      expect(response.body).to include('Here is a list of all available users.')
    end

    it 'Should render correct template' do
      get users_path
      expect(response).to render_template('index')
    end
  end

  describe "GET /users/:id" do
    it "Renders a successful response" do
      get '/users/1'
      expect(response).to be_successful
    end

    it "Response with correct status" do
      get '/users/1'
      expect(response.status).to eq(200)
    end

    it 'Should include correct placeholder text.' do
      get '/users/1'
      expect(response.body).to include('Here is a details of a given user')
    end

    it 'Should render correct template' do
      get '/users/1'
      expect(response).to render_template('show')
    end
  end

end