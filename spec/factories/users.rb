require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email 'thefounder@detroitrails.co'
    password 'butteruppercuts2012'
    password_confirmation 'butteruppercuts2012'
  end

end