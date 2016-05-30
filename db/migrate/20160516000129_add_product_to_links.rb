class AddProductToLinks < ActiveRecord::Migration
  def change
    add_column :links, :product, :string
  end
end
