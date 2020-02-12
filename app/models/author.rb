# frozen_string_literal: true

class Author < ApplicationRecord
  validates :name, presence: true, length: { in: (4..128) }

  def to_s
    name
  end
end
