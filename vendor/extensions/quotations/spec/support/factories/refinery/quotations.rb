
FactoryGirl.define do
  factory :quotation, :class => Refinery::Quotations::Quotation do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

