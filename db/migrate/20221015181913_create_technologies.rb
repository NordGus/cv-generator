class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name, null: false, index: { name: :technologies_name_index, unique: true }

      t.timestamps
    end
  end
end
