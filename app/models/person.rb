class Person < ApplicationRecord
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
    attachable.variant :resume, resize_to_limit: [500, 500]
  end

  has_many :contacts, class_name: "Data::Contact", dependent: :destroy

  validates :name, presence: true
end
