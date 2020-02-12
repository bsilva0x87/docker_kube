# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BooksController, type: :request do
  let(:id) { 'B001GSTOAM' }

  describe 'GET /books' do
    it 'returns books data' do
      get books_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /books/:id' do
    it 'returns a book data' do
      get book_path(id: id)
      expect(response).to have_http_status(200)
      expect(response.body).to match(id)
    end
  end
end
