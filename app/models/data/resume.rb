class Data::Resume < ApplicationRecord
  belongs_to :person, class_name: "Person", foreign_key: :person_id

  has_one :biography, class_name: "Data::Biography", dependent: :destroy

  enum locale: {
    en: 0,
    es: 1
  }

  validates :name, presence: true
end
