class CreateDataBiographies < ActiveRecord::Migration[7.0]
  def change
    create_table :data_biographies do |t|
      t.string :content, null: false
      t.belongs_to :resume,
                   null: false,
                   foreign_key: { to_table: :data_resumes },
                   index: { name: :data_biographies_data_resume_reference }

      t.timestamps
    end
  end
end
