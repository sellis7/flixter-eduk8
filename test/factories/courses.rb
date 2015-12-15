FactoryGirl.define do
  factory :course do
    title "How to do Anything"
    description "Life is hard, so we teach you how you can accomplish just about anything."
    cost 1.50

    association :user
  end

end
