# SCHOOL API

School API is a project with API implementation
Rails 7+, Postgresql, Docker

# How to start a project
The project is run locally using the docker compose up command

# RSpec tests
Run test: bundle exec rspec spec/

# Testing API with Postman
POST /students - New student registration
DELETE /students/{user_id} - Delete student
GET /schools/{school_id}/classrooms/{classroom_id}/students - Show list of students in the class
GET /schools/{school_id}/classrooms - Show list of school classes
