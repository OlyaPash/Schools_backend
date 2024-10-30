FactoryBot.define do
  factory :classroom do
    number { 1 }
    letter { "A" }
    students_count { 3 }
    school
  end
end
