require 'rails_helper'

RSpec.describe Campaign, type: :model do
  let(:campaign) { create(:campaign) }

  it { should respond_to(:name) }
  it { should respond_to(:client_name) }
  it { should respond_to(:completion_status) }
  it { should validate_inclusion_of(:completion_status).in_array(["Testing", "QA"]).allow_nil(true) }

  it { should belong_to(:user) }
  # it { should have_many(:emails) }

  describe 'valid Model' do
    it 'should be an instance of Campaign Model' do
      expect(campaign).to be_an_instance_of(Campaign)
    end
  end

  describe '#name' do
    it 'should have an updateable name' do
      campaign.update_attributes(name: "Not a Default Name")
      expect(campaign.name).to eq("Not a Default Name")
    end
  end

  describe '#completion_status' do
    skip 'should have an updateable completion_status' do
    end
  end

end
