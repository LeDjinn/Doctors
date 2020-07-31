class AddDetailsToAppointements < ActiveRecord::Migration[5.2]
  def change
    add_column :appointements, :doctoo_id, :integer
    add_column :appointements, :patient_id, :integer
  end
end
