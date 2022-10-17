class Technology < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
