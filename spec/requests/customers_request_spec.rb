require 'rails_helper'
RSpec.describe 'Customers Requests', type: :request do
  describe 'customer subscriptions API' do
    let!(:customers) { create_list(:customer, 5) }
    let!(:teas) { create_list(:tea, 5) }
    let!(:customer_id) { customers.first.id }
    let(:tea_id) { teas.first.id }
    let!(:active_subs) { create_list(:subscription, 5, customer_id: customers.last.id, tea_id: teas.last.id) }
    let!(:cancelled_subs) { create_list(:subscription, 5, customer_id: customers.last.id, tea_id: teas.last.id) }

    describe 'get customer subscriptions' do
      before { get api_v1_customer_subscriptions_path(customer_id: customers.last.id) }

      it 'returns subscriptions' do
        expect(json).not_to be_empty
        expect(json[:data].size).to eq(10)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end


    describe 'Create Subscription' do
      let(:valid_attributes) {
        {
          customer_id: customer_id,
          tea_id: tea_id,
          title: 'Test Name of Tea',
          price: 5.99,
          status: 'active',
          frequency: 'weekly'
        }
      }

      context 'with valid request' do
        before { post api_v1_customer_subscriptions_path, params: valid_attributes }

        it 'creates a subscription' do
          expect(json[:data][:attributes][:title]).to eq('Test Name of Tea')
        end
        it 'returns status code 201' do
          expect(response).to have_http_status(201)
        end
      end
    end

    describe 'Update Subscription' do
      let(:customer) { create(:customer) }
      let(:tea) { create(:tea) }
      let(:subscription) { create(:subscription, customer_id: customer.id, tea_id: tea.id) }

      before { patch api_v1_customer_subscription_path(subscription.id) }

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end
end
