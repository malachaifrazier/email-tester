class Email < ActiveRecord::Base
  belongs_to :campaign
  has_many :recipient_lists#, as: :recipients

  def send_status
    campaign.completion_status
  end
end
