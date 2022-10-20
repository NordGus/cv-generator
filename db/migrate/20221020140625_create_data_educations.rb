class CreateDataEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :data_educations do |t|
      t.string :title, null: false
      t.string :institution, null: false
      t.date :date, null: false
      t.belongs_to :resume,
                   null: false,
                   foreign_key: { to_table: :data_resumes },
                   index: { name: :data_educations_data_resume_reference }

      t.timestamps
    end
  end
end
