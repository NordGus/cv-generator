class Data::WorkExperience < ApplicationRecord
  belongs_to :resume, class_name: "Data::Resume", foreign_key: :resume_id
  belongs_to :company, class_name: "Company", foreign_key: :company_id

  has_many :tech_experience, class_name: "Data::TechExperience", dependent: :destroy

  validates :from, presence: true
end
