class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, index: { name: :companies_name_index, unique: true }

      t.timestamps
    end
  end
end
