require 'rails_helper'

RSpec.describe Student, type: :model do
  it { should belong_to :classroom }
  it { should belong_to :school }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :surname }
end
