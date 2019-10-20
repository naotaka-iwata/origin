class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :club_id
      t.text :event_content
      t.datetime :event_day

      t.timestamps
    end
  end
end
