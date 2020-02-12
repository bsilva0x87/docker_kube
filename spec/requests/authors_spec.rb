# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthorsController, type: :request do
  describe 'GET /authors' do
    it 'returns authors data' do
      get authors_path
      expect(response).to have_http_status(200)
    end
  end
end
