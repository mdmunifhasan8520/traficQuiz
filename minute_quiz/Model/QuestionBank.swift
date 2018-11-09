//
//  QuestionBank.swift
//  minute_quiz
//
//  Created by MacBook Pro on 7/29/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class QuestionBank {
    
    //create an array of question object
    var list = [Question]()
    
    init() {
        //creating a quiz item and appending it to the list
        let item = Question(id: 1, image: UIImage(named: "Diego Maradona_A")!, text: "Is It Madona", correctAnswer: false, character: "Diego Maradona", shortDescription: "Maradona played in four FIFA World Cups, including the 1986 World Cup in Mexico where he captained Argentina and led them to victory over West Germany in the final, and won the Golden Ball as the tournament's best player.", levelId: 1)
      
        
        //add the Questin to the list of question
        list.append(item)
        
        list.append(Question(id: 2, image: UIImage(named: "pele_A")!, text: "Here is pele...", correctAnswer: true,character: "Pele",shortDescription: "He is an argentine Footballer.", levelId: 1))
        list.append(Question(id: 3, image: UIImage(named: "David Beckham_A")!, text: "David Bhuiya!...", correctAnswer: false,character: "Beckham",shortDescription: "He is an argentine Footballer.", levelId: 2))
        list.append(Question(id: 4, image: UIImage(named: "Socrates_A")!, text: "Yes Socrates", correctAnswer: true,character: "Socrates",shortDescription: "He is an argentine Footballer.", levelId: 3))
        list.append(Question(id: 5, image: UIImage(named: "Roberto Carlos_A")!, text: "I think ronaldo?", correctAnswer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 4))
        list.append(Question(id: 5, image: UIImage(named: "Roberto Carlos_A")!, text: "I think ronaldo?", correctAnswer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 5))
       
      
       
       
      
   
    }
}
