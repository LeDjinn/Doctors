class QuezacPaients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :maladie, :string
  end
end
