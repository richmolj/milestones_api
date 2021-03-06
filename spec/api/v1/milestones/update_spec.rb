require 'rails_helper'

RSpec.describe "milestones#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/milestones/#{milestone.id}", payload
  end

  describe 'basic update' do
    let!(:milestone) { create(:milestone) }

    let(:payload) do
      {
        data: {
          id: milestone.id.to_s,
          type: 'milestones',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(MilestoneResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { milestone.reload.attributes }
    end
  end
end
