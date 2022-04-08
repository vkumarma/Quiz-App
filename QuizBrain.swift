//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Vivek Kumar on 6/4/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

var questionNumber = 0
var score = 0


struct QuizBrain{
   let quiz = [Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
   Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
   Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
   Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
   Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
   Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
   Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
   Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
   Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
   Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]
   //So now we have an array of question objects.The data type of quiz is [Question] an array or collection of Questions.
   //There are now three arrays with in an array.The data type of constant quiz is now [[String]].
   
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if(userAnswer == quiz[questionNumber].rightAnswer){// This is going to look inside our quiz array and pull out the item at particular position.
            score += 1
            return true
            
        }
        else {
            return false
        }
    }
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNumber) / Float(quiz.count - 1)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber < quiz.count - 1{
            questionNumber += 1
            //print(quiz.count)
            //  print(questionNumber)
        }
        else {
            
            questionNumber = 0
            score = 0
            
        }
    }
    func getScore() -> Int{
        return score
    }
    
    func getChoice1() -> String{
         return quiz[questionNumber].answers[0]
    }
    func getChoice2() -> String{
        return quiz[questionNumber].answers[1]
    }
    func getChoice3() -> String{
        return quiz[questionNumber].answers[2]
    }
    
}
