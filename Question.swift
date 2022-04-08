//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Vivek Kumar on 6/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    //There are two properties.
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q:String,a:[String],correctAnswer:String) {
      text = q
      answers = a
      rightAnswer = correctAnswer
    }
}
