require 'rails_helper'

RSpec.describe "Students", type: :request do
  let(:school) { create(:school) }
  let(:classroom) { create(:classroom, school_id: school.id) }

  describe "GET /schools/:school_id/classes/:class_id/students" do
    # let(:students) { create_list(:student, 2, school_id: school.id, classroom_id: classroom.id) }

    it "returns http success" do
      headers = { "ACCEPT" => "application/json" }
      get school_classroom_students_path(school_id: school.id, classroom_id: classroom.id)

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success created" do
      
      post students_path, params: {
        student: {
          "first_name": "FirstName",
          "last_name": "LastName",
          "surname": "Surname",
          "classroom_id": classroom.id,
          "school_id": school.id
      }
    }
      expect(response).to have_http_status(:created)
    end
  end

  describe "DELETE #destroy" do
    let!(:student) { create(:student) }

    it "returns http success" do
      delete "/students/#{student.id}"

      expect(response).to have_http_status(:ok)
    end

    it "returns http bad request" do
      delete "/students/0"

      expect(response).to have_http_status(:bad_request)
    end
  end
end
