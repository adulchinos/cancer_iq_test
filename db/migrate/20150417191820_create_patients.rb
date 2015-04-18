class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth 

      t.timestamps null: true
    end
  end
end
