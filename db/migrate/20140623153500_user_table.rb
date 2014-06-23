class UserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name
      t.string :wants_planet
      t.string :from_planet
      t.timestamp :created_at
    end
  end
end
