class Data::WorkExperience < ApplicationRecord
  belongs_to :resume, class_name: "Data::Resume", foreign_key: :resume_id
  belongs_to :company, class_name: "Company", foreign_key: :company_id

  validates :from, presence: true
end
