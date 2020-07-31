class RemoveSpecialityFromDoctoos < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctoos, :speciality, :string
  end
end
