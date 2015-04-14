require 'factory_girl'

FactoryGirl.define do
  factory :campaign do
    name 'Default Campaign'
    completion_status 'Testing'
  end

end