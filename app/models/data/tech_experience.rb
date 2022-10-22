class Data::TechExperience < ApplicationRecord
  belongs_to :work_experience, class_name: "Data::WorkExperience", foreign_key: :work_experience_id
  belongs_to :technology, class_name: "Technology", foreign_key: :technology_id
end
