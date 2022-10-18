class Data::Resume < ApplicationRecord
  belongs_to :person, class_name: "Person", foreign_key: :person_id

  enum locale: {
    en: 0,
    es: 1
  }

  validates :name, presence: true
end
