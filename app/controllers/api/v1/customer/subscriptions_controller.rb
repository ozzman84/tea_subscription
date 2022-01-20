class Api::V1::Customer::SubscriptionsController < ApplicationController
  # before_action :set_customer, only: %i[create index destroy]

  def index
    customer = Customer.find(params[:customer_id])
    subscriptions = customer.subscriptions
    render json: SubscriptionSerializer.new(subscriptions)
  end

  def create
    customer = Customer.find(params[:customer_id])
    subscription = customer.subscriptions.create(subscription_params)
    render json: SubscriptionSerializer.add_subscription(subscription), status: 201
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update!(subscription_params)
    render json: subscription, status: 204
  end

  private

  # def set_customer
  #   @customer = Customer.find(params[:customer_id])
  # end

  def subscription_params
    params.permit(:title, :price, :status, :frequency, :tea_id)
  end
end
