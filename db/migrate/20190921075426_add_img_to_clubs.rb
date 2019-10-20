class AddImgToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :img, :string
  end
end
