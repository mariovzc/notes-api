class Note < ApplicationRecord
  validates :data, presence: true
end
