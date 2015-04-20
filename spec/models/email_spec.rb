require 'rails_helper'

RSpec.describe Email, type: :model do
  let(:campaign) { create(:campaign) }
  let(:email) { create(:email) }

  it { should respond_to(:subject) }
  it { should respond_to(:send_status) }
  it { should respond_to(:hosted_html) }
  it { should respond_to(:campaign_name) }
  it { should belong_to(:campaign) }
  it { should have_many(:recipient_lists) }
  it { should accept_nested_attributes_for(:recipient_lists) }

  describe 'valid Model' do
    it 'should be an instance of Email Model' do
      expect(email).to be_an_instance_of(Email)
    end
  end

  describe '#send_status' do
    it 'should give the campaign.completion_status' do
      @email = create(:email, campaign: campaign)
      expect(@email.send_status).to eq(@email.campaign.completion_status)
    end
  end

  describe '#completion_status' do
    skip 'should work' do
    end
  end
end
