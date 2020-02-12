# frozen_string_literal: true

class AuthorsController < ApplicationController
  def index
    @authors = Authors::List.call
    render json: @authors, status: :ok
  end
end
