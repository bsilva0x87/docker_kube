# frozen_string_literal: true

class BooksController < ApplicationController
  include Params::BookParams

  def index
    @objects = Books::List.call
    render json: @objects, status: :ok
  end

  def show
    @object = Books::Find.new(code: book_id).call
    render json: @object, status: :ok
  end
end
