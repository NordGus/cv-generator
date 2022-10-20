class CreateDataLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :data_languages do |t|
      t.string :name, null: false
      t.integer :level, null: false, default: 0
      t.belongs_to :resume,
                   null: false,
                   foreign_key: { to_table: :data_resumes },
                   index: { name: :data_languages_data_resume_reference }

      t.timestamps
    end
  end
end
