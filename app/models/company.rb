class Company < ApplicationRecord
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  has_many :work_experiences, class_name: "Data::WorkExperience", dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
