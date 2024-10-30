require 'rails_helper'

RSpec.describe "Classrooms", type: :request do
  let(:school) { create(:school) }
  
  describe "GET /schools/:school_id/classrooms" do
    # let(:classrooms) { create_list(:classroom, 2, school_id: school.id) }

    it "returns http success" do
      headers = { "ACCEPT" => "application/json" }
      get school_classrooms_path(school_id: school.id)

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:ok)
    end
  end
end
