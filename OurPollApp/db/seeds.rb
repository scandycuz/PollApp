# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(user_name: 'Tonia')
User.create!(user_name: 'Trevor')
User.create!(user_name: 'Jim')
User.create!(user_name: 'Bob')
User.create!(user_name: 'Harris')
User.create!(user_name: 'Sally')

Response.create!(user_id: 3, answer_choice_id: 1)
# Jim's Responses
# Poll 1: Do you like Pizza?
# Question 1: Is pepperoni better than cheese?
# Answer Choice 1: Yes

Response.create!(user_id: 3, answer_choice_id: 3)
# Jim's Responses
# Poll 1: Do you like Pizza?
# Question 2: Is pizza better than salad?
# Answer Choice 3: Yes

Response.create!(user_id: 2, answer_choice_id: 3)
# Trevor's Response
# Poll 1: Do you like Pizza?
# Question 2: Is pizza better than salad?
# Answer Choice 3: Yes

Response.create!(user_id: 6, answer_choice_id: 7)
# Sally's Responses
# Poll Poll 3: Do you like puppies?
# Question 4: Are kittens the cutest thing ever?
# Answer Choice 7: Yes

Response.create!(user_id: 6, answer_choice_id: 4)
# Sally's Responses
# Poll 1: Do you like puppies?
# Question 2: Is pizza better than salad?
# Answer Choice 4: No

#################### P O L L    O N E #######################
# AUTHORED_BY: Tonia

Poll.create!(title: 'Do you like pizza?', author_id: 1)
Question.create!(text: "Is pepperoni better than cheese?", poll_id: 1)
AnswerChoice.create!(question_id: 1, text: 'Yes')
AnswerChoice.create!(question_id: 1, text: 'No')

Question.create!(text: "Is pizza better than salad?", poll_id: 1)
AnswerChoice.create!(question_id: 2, text: 'Yes')
AnswerChoice.create!(question_id: 2, text: 'No')


Question.create!(text: "Is life better with pizza?", poll_id: 1)
AnswerChoice.create!(question_id: 3, text: 'Yes')
AnswerChoice.create!(question_id: 3, text: 'No')

#################### P O L L   T W O #########################
# AUTHORED_BY: Trevor
Poll.create!(title: 'Do you like kittens?', author_id: 2)
Question.create!(text: "Are kittens the cutest thing ever?", poll_id: 2)
AnswerChoice.create!(question_id: 4, text: 'Yes')
AnswerChoice.create!(question_id: 4, text: 'No')

Question.create!(text: "Do you like soft cuddly kittens?", poll_id: 2)
AnswerChoice.create!(question_id: 5, text: 'Yes')
AnswerChoice.create!(question_id: 5, text: 'No')

Question.create!(text: "Would you like to adopt a kitten?", poll_id: 2)
AnswerChoice.create!(question_id: 6, text: 'Yes')
AnswerChoice.create!(question_id: 6, text: 'No')

#################### P O L L   T H R E E #######################
# AUTHORED_BY: Trevor
Poll.create!(title: 'Do you like puppies?', author_id: 2)
Question.create!(text: "Are dogs better than cats?", poll_id: 3)
AnswerChoice.create!(question_id: 7, text: 'Yes')
AnswerChoice.create!(question_id: 7, text: 'No')

Question.create!(text: "Do you like energetic furballs?", poll_id: 3)
AnswerChoice.create!(question_id: 8, text: 'Yes')
AnswerChoice.create!(question_id: 8, text: 'No')

Question.create!(text: "Do you wanna run around with a pup?", poll_id: 3)
AnswerChoice.create!(question_id: 9, text: 'Yes')
AnswerChoice.create!(question_id: 9, text: 'No')
