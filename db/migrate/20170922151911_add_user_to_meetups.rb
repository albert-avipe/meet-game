class AddUserToMeetups < ActiveRecord::Migration[5.1]
  def change
    add_reference :meetups, :user, foreign_key: true
  end
end
