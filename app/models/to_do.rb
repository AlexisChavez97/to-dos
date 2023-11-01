# frozen_string_literal: true

class ToDo < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 10 }
end