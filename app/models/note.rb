class Note < ApplicationRecord
  validates :data,:title, presence: true
end
