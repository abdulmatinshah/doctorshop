
FactoryGirl.define do
  factory :quotation, :class => Refinery::Quotations::Quotation do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

