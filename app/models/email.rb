class Email < ActiveRecord::Base
  belongs_to :campaign
  has_many :recipient_lists
  accepts_nested_attributes_for :recipient_lists

  def send_status
    campaign.completion_status
  end

  def campaign_name
    campaign.name
  end

end
