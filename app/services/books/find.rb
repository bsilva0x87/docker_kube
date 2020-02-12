# frozen_string_literal: true

module Books
  class Find < ApplicationService
    attr_reader :code

    def initialize(code: '')
      @code = code
    end

    def call
      books.detect { |book| book[:code] == code }
    end

    private

    def books
      Books::List.call
    end
  end
end
