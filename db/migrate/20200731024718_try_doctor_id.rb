class TryDoctorId < ActiveRecord::Migration[5.2]
  def change
    add_index :doctoos
  end
end