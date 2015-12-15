FactoryGirl.define do
  factory :section do
    title "Intermediate"
    course_id 1

    association :user
    association :course

  end

end
