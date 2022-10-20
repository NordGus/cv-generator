class Data::Language < ApplicationRecord
  belongs_to :resume, class_name: "Data::Resume", foreign_key: :resume_id

  enum level: {
    Native: 0,
    A1: 1,
    A2: 2,
    B1: 3,
    B2: 4,
    C1: 5,
    C2: 6,
  }

  validates :name, presence: true
end
