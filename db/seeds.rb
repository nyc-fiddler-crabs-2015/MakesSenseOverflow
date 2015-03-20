# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "chris", email: "chris@chris.com", password: "123")
user2 = User.create(name: "bob", email: "bob@bob.com", password: "123")


question1 = Question.create(title: "What's better, Ruby or JS?", description: "I have a problem.  Please help!", user_id: user1.id)

answer1 = Answer.create(content: "JS is the best!", question_id: question1.id, user_id: user2.id)

