require 'rails_helper'

RSpec.describe School, type: :model do
  it { should have_many(:classrooms).dependent(:destroy) }
  it { should have_many(:students).dependent(:destroy) }
end
