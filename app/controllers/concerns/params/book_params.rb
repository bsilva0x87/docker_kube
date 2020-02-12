# frozen_string_literal: true

module Params
  module BookParams
    def book_id
      params.require(:id)
    end
  end
end
