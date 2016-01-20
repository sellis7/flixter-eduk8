FactoryGirl.define do
  factory :section do
    title "Intermediate"
    course_id 1

    association :course

  end

end
