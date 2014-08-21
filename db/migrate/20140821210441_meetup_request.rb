class MeetupRequest < ActiveRecord::Migration
  def change
    create_table :meetup_request do |t| 
      t.references :from_user_id, references: :users
      t.references :to_user_id, references: :users
    end
  end
end
