class RemoveColumnBrewTimeFromTeas < ActiveRecord::Migration[5.2]
  def change
    remove_column :teas, :brew_time, :integer
  end
end
