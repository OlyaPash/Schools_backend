# SCHOOL API
School API is a project with API implementation
Rails 7+, Postgresql, Docker, Rspec

# How to start a project
Run the project locally: docker compose up

# RSpec tests
Run test: bundle exec rspec spec/

# Testing API with Postman
POST /students - New student registration
DELETE /students/{user_id} - Delete student (with X-Auth-Token)
GET /schools/{school_id}/classrooms/{classroom_id}/students - Show list of students in the class
GET /schools/{school_id}/classrooms - Show list of school classes
