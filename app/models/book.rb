# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true, length: { in: (4..128) }
  validates :author, :code, presence: true

  def to_s
    title
  end
end
