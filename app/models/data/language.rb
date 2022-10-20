class Data::Language < ApplicationRecord
  belongs_to :resume, class_name: "Data::Resume", foreign_key: :resume_id

  enum level: {
    A1: 0,
    A2: 1,
    B1: 2,
    B2: 3,
    C1: 4,
    C2: 5,
  }

  validates :name, presence: true
end
