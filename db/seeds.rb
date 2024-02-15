# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Task.create(name: "Task 1", description: "Task 1 description", completed: false, pending_date: "2024-02-18 12:00:00", active: true)
Task.create(name: "Task 2", description: "Task 2 description", completed: false, pending_date: "2024-02-18 12:00:00", active: true)
Task.create(name: "Task 3", description: "Task 3 description", completed: false, pending_date: "2024-02-18 12:00:00", active: true)
Task.create(name: "Task 4", description: "Task 4 description", completed: false, pending_date: "2024-02-18 12:00:00", active: true)
Task.create(name: "Task 5", description: "Task 5 description", completed: false, pending_date: "2024-02-18 12:00:00", active: true)
