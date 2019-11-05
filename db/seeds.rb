require 'rest-client'
require 'json'

Score.destroy_all 
User.destroy_all
Question.destroy_all

questions = RestClient.get("https://opentdb.com/api.php?amount=50")
questionData = JSON.parse(questions)['results']
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


questionData.each do |question, value| 
    Question.create(
        category: question['category'],
        question_type: question['type'],
        difficulty: question['difficulty'],
        question: question['question'],
        correct_answer: question['correct_answer']
    ) 
end 


adam = User.create(name: "adam")
martin = User.create(name: "martin")
arlene = User.create(name: "arlene") 

