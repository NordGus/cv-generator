class Data::Education < ApplicationRecord
  belongs_to :resume, class_name: "Data::Resume", foreign_key: :resume_id

  validates :title, presence: true
  validates :institution, presence: true
  validates :date, presence: true
end
