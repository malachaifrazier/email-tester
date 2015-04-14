class Campaign < ActiveRecord::Base
  has_paper_trail
  belongs_to :user
  has_many :emails

  validates :completion_status, inclusion: { in: ["Testing", "QA"] }, allow_nil: true

end