class CreateMeetups < ActiveRecord::Migration[5.1]
  def change
    create_table :meetups do |t|
      t.string :title
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
