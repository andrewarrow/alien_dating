class CreateMeetupRequests < ActiveRecord::Migration
  def change
    create_table :meetup_requests do |t|
      t.references :user, index: true
      
      t.timestamps
    end
  end
end
