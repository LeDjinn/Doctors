class CreateDoctoos < ActiveRecord::Migration[5.2]
  def change
    create_table :doctoos do |t|
      t.string :first_name
      t.string :last_name
      t.string :speciality
      t.string :sip_code_string

      t.timestamps
    end
  end
end
