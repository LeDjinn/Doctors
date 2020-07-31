class AddSpecialitytoSpecialities < ActiveRecord::Migration[5.2]
  def change
    add_column :specialities, :speciality, :string
  end
end
