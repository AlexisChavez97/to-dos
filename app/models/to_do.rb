# frozen_string_literal: true

class ToDo < ApplicationRecord
  validates :title, presence: true
end