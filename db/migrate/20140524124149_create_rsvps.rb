class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :code
      t.string :address

      t.timestamps
    end
  end
end
