class AddPlansToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :january_plans, :text
    add_column :clubs, :february_plans, :text
    add_column :clubs, :march_plans, :text
    add_column :clubs, :april_plans, :text
    add_column :clubs, :may_plans, :text
    add_column :clubs, :june_plans, :text
    add_column :clubs, :july_plans, :text
    add_column :clubs, :august_plans, :text
    add_column :clubs, :september_plans, :text
    add_column :clubs, :october_plans, :text
    add_column :clubs, :november_plans, :text
    add_column :clubs, :december_plans, :text
    add_column :clubs, :active_plans, :text
  end
end
