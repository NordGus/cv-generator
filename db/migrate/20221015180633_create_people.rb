class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name, null: false, index: { name: :people_name_index }

      t.timestamps
    end
  end
end
