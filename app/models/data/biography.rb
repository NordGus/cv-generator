class Data::Biography < ApplicationRecord
  belongs_to :resume, class_name: "Data::Resume", foreign_key: :resume_id

  validates :content, presence: true
end
