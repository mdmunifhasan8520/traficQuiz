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
        let item = Question(id: 1, image: UIImage(named: "Double_Bend_First_Left")!, text: "There are two bends ahead, First is to the left. Slowly drive while turning alongside bends.", correctAnswer: true, character: "Double Bend First Left", shortDescription: "There are two bends ahead, First is to the left. Slowly drive while turning alongside bends.", levelId: 1)
      
        
        //add the Questin to the list of question
        list.append(item)
        
        list.append(Question(id: 2, image: UIImage(named: "Dual_Carriageway_Ends")!, text: "Dual carriageway of the road meets ahead and becomes one.", correctAnswer: true,character: "Dual Carriageway Ends",shortDescription: "Dual carriageway of the road meets ahead and becomes one.", levelId: 1))
        list.append(Question(id: 3, image: UIImage(named: "Height_Limit_Ahead")!, text: "Vehicles having the height above 4.5meters can't go through the road ahead.", correctAnswer: true,character: "Height Limit Ahead",shortDescription: "Vehicles having the height above 4.5meters can't go through the road ahead.", levelId: 1))
        list.append(Question(id: 4, image: UIImage(named: "Road_Narrow_On_Both_Sides")!, text: "Road narrows infront from both sides. Watch out for vehicles alongside.", correctAnswer: true,character: "Road Narrow On Both Sides",shortDescription: "Road narrows infront from both sides. Watch out for vehicles alongside.", levelId: 1))
        list.append(Question(id: 5, image: UIImage(named: "Road_Narrows_In_The_Right")!, text: "Road narrows ahead on the right side. Watch out for the vehicles on your right-side.", correctAnswer: true,character: "Road Narrows In The Right",shortDescription: "Road narrows ahead on the right side. Watch out for the vehicles on your right-side.", levelId: 1))
        list.append(Question(id: 5, image: UIImage(named: "round_about")!, text: "Indicates that a circular driveway ahead. Slowly drive while turning alongside the bend.", correctAnswer: true,character: "Round About",shortDescription: "Indicates that a circular driveway ahead. Slowly drive while turning alongside the bend.", levelId: 1))
        
        
        
        list.append(Question(id: 3, image: UIImage(named: "Height_Limit_Ahead")!, text: "Vehicles having the height above 4.5meters can't go through the road ahead.", correctAnswer: false,character: "Height Limit Ahead",shortDescription: "Vehicles having the height above 4.5meters can't go through the road ahead.", levelId: 2))
        list.append(Question(id: 4, image: UIImage(named: "Road_Narrow_On_Both_Sides")!, text: "Road narrows infront from both sides. Watch out for vehicles alongside.", correctAnswer: true,character: "Road Narrow On Both Sides",shortDescription: "Road narrows infront from both sides. Watch out for vehicles alongside.", levelId: 3))
        list.append(Question(id: 5, image: UIImage(named: "Road_Narrows_In_The_Right")!, text: "Road narrows ahead on the right side. Watch out for the vehicles on your right-side.", correctAnswer: true,character: "Road Narrows In The Right",shortDescription: "Road narrows ahead on the right side. Watch out for the vehicles on your right-side.", levelId: 4))
        list.append(Question(id: 5, image: UIImage(named: "round_about")!, text: "Indicates that a circular driveway ahead. Slowly drive while turning alongside the bend.", correctAnswer: true,character: "Round About",shortDescription: "Indicates that a circular driveway ahead. Slowly drive while turning alongside the bend.", levelId: 5))
       
      
       
       
      
   
    }
}
