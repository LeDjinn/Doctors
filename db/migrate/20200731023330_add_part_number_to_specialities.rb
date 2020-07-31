class AddPartNumberToSpecialities < ActiveRecord::Migration[5.2]
  def change
    add_column :specialities, :special, :string
  end
end
