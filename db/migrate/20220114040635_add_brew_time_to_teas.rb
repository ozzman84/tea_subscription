class AddBrewTimeToTeas < ActiveRecord::Migration[5.2]
  def change
    add_column :teas, :brew_time, :integer
  end
end
