class CreateDataContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :data_contacts do |t|
      t.string :content, null: false
      t.string :link
      t.integer :icon,
                null: false,
                default: 0,
                index: { name: :data_contacts_icon_enum_index }
      t.belongs_to :person,
                   null: false,
                   foreign_key: { to_table: :people },
                   index: { name: :data_contacts_person_reference }

      t.timestamps
    end
  end
end
