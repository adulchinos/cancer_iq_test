class AddingPatientIdToCancer < ActiveRecord::Migration
  def change
  	change_table :cancers do |t|
  		t.integer :patient_id
  	end
  end
end
