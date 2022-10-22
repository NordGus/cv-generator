class CreateDataTechExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :data_tech_experiences do |t|
      t.string :version
      t.belongs_to :work_experience,
                   null: false,
                   foreign_key: { to_table: :data_work_experiences },
                   index: { name: :data_tech_experiences_data_work_experiences_reference }
      t.belongs_to :technology,
                   null: false,
                   foreign_key: { to_table: :technologies },
                   index: { name: :data_tech_experiences_technologies_reference }

      t.timestamps
    end
  end
end
