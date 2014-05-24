class AddIsAttendingToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :is_attending, :Boolean
  end
end
