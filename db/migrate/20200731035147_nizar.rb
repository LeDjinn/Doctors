class Nizar < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :maladie, :string
  end
end
