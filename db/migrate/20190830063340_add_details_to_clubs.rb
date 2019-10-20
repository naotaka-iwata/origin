class AddDetailsToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :club_name, :string
    add_column :clubs, :club_description, :text
    add_column :clubs, :club_college, :string
    add_column :clubs, :club_number, :string
    add_column :clubs, :club_place, :string
    add_column :clubs, :club_frequency, :string
    add_column :clubs, :club_twitter, :string
    add_column :clubs, :club_instagram, :string
  end
end
