# frozen_string_literal: true

module Authors
  class List < ApplicationService
    def call
      data
    end

    private

    def data
      authors = books.map { |book| { name: book[:author] } }
      authors.uniq!
    end

    def books
      Books::List.call
    end
  end
end
