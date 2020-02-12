# frozen_string_literal: true

class AuthorsController < ApplicationController
  def index
    @objects = Authors::List.call
    render json: @objects, status: :ok
  end
end
