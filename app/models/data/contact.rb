class Data::Contact < ApplicationRecord
  belongs_to :person, class_name: "Person", foreign_key: :person_id

  enum icon: {
    phone: 0,
    email: 1,
    linkedin: 2,
    github: 3,
    website: 4
  }

  validates :content, presence: true
end
