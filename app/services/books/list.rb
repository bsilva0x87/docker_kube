# frozen_string_literal: true

module Books
  class List < ApplicationService
    def call
      data[:books]
    end

    private

    def data
      YAML.load_file(path).deep_symbolize_keys!
    end

    def path
      [Rails.root, 'public', 'books.yml'].join('/')
    end
  end
end
