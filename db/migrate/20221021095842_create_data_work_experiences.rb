class CreateDataWorkExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :data_work_experiences do |t|
      t.date :from, null: false
      t.date :to
      t.text :description
      t.belongs_to :resume,
                   null: false,
                   foreign_key: { to_table: :data_resumes },
                   index: { name: :data_work_experiences_data_resume_reference }
      t.belongs_to :company,
                   null: false,
                   foreign_key: { to_table: :companies },
                   index: { name: :data_work_experiences_companies_reference }

      t.timestamps
    end
  end
end
