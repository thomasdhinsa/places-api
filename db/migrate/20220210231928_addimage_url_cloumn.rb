class AddimageUrlCloumn < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :imageUrl, :string
  end
end
