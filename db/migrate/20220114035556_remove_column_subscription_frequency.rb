class RemoveColumnSubscriptionFrequency < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :frequency, :integer
  end
end
