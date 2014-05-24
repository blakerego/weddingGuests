class AddMealChoiceToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :meal_choice, :string
  end
end
