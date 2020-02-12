# frozen_string_literal: true

class BooksController < ApplicationController
  include Params::BookParams

  def index
    @books = Books::List.call
    render json: @books, status: :ok
  end

  def show
    @book = Books::Find.new(code: book_id).call
    render json: @book, status: :ok
  end
end
