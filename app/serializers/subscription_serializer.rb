class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :price, :status, :frequency, :tea_id, :customer_id

  def self.add_subscription(subscription)
    {
      data: {
        id: subscription.id,
        type: 'subscription',
        attributes: subscription,
        message: 'Successfully Created',
        releationships: {
          id: subscription.customer.id,
          type: 'customer',
          attributes: {
            name: "#{subscription.customer.first_name} #{subscription.customer.last_name}"
          },
          id: subscription.tea.id,
          type: 'tea',
          attributes: {
            title: subscription.tea.title
          }
        }
      }
    }
  end
end
