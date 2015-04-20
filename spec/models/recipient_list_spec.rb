require 'rails_helper'

RSpec.describe RecipientList, type: :model do
  let(:campaign) { create(:campaign) }
  let(:email) { create(:email, campaign: campaign) }
  let(:list) { create(:recipient_list, email: email) }

  it { should respond_to(:name) }
  it { should respond_to(:list) }
  it { should belong_to(:email) }

  describe 'valid Model' do
    it 'should be an instance of RecipientList Model' do
      expect(list).to be_an_instance_of(RecipientList)
    end
  end
end
