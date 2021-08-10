# frozen_string_literal: true

FactoryBot.define do
  factory :customer, class: "ProgramManager::Customer" do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end
