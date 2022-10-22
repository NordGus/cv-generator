class Technology < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :tech_experiences, class_name: "Data::TechExperience", dependent: :destroy
end
