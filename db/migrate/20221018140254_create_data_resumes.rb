class CreateDataResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :data_resumes do |t|
      t.integer :locale, null: false, default: 0
      t.string :name, null: false
      t.belongs_to :person,
                   null: false,
                   foreign_key: { to_table: :people },
                   index: { name: :data_resumes_person_reference }

      t.timestamps
    end
  end
end
