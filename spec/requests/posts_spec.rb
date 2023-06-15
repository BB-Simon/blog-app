require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /users/1/posts' do
    it 'Should have successful response' do
      get '/users/1/posts'
      expect(response).to be_successful
    end

    it 'Should have failed 200 status' do
      get '/users/1/posts'
      expect(response.status).to eq(200)
    end

    it 'Should render correct placehodler text' do
      get '/users/1/posts'
      expect(response.body).to include('Here is a list of all posts for a given user')
    end

    it 'Should render correct template' do
      get '/users/1/posts'
      expect(response).to render_template('index')
    end
  end

  describe 'GET users/user_id/posts/:id' do
    it 'Should have successful response' do
      get '/users/1/posts/1'
      expect(response).to be_successful
    end

    it 'Should have 200 status' do
      get '/users/1/posts/1'
      expect(response.status).to eq 200
    end

    it 'Should render correct placeoder text' do
      get '/users/1/posts/1'
      expect(response.body).to include('Here is a post details of a given post for a given user')
    end

    it 'Should render correct template' do
      get '/users/1/posts/1'
      expect(response).to render_template('show')
    end
  end
end
