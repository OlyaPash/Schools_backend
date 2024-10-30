FactoryBot.define do
  factory :student do
    first_name { "FirstName" }
    last_name { "LastName" }
    surname { "Surname" }
    classroom
    school
  end
end
