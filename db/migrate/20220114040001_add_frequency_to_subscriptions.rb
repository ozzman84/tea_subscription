class AddFrequencyToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :frequency, :integer
  end
end
