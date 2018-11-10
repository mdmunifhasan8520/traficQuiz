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
        let item = Question(id: 1, image: UIImage(named: "Double_Bend_First_Left")!, text: "Double Bend First Left", correctAnswer: true, character: "Double Bend First Left", shortDescription: "These signs indicate that ahead are dangerous or unexpected bends in the road, some being continuous, others being sharp-ended.Signs indicate the curves are to the left whether the degree to which the curves or bends are sharp. They may also indicate a series of curves or bends ahead.", levelId: 1)
      
        
        //add the Questin to the list of question
        list.append(item)
        
        list.append(Question(id: 2, image: UIImage(named: "Dual_Carriageway_Ends")!, text: "Dual Carriageway Ends", correctAnswer: true,character: "Dual Carriageway Ends",shortDescription: "A dual carriageway is a road which has two lanes of traffic travelling in each direction with a strip of grass or concrete down the middle to separate the two lots of traffic.", levelId: 1))
        list.append(Question(id: 3, image: UIImage(named: "Height_Limit_Ahead")!, text: "Height Limit Ahead", correctAnswer: true,character: "Height Limit Ahead",shortDescription: "Prohibiting vehicles above a certain height are used mainly at non—arch bridges and other structures.These signs should not be used at arch bridges, as the main risk to these is from vehicles which, although low enough to pass through the central part of the arch, might strike the curved shoulder of the structure.", levelId: 1))
        list.append(Question(id: 4, image: UIImage(named: "Road_Narrow_On_Both_Sides")!, text: "Road Narrow On Both Sides", correctAnswer: true,character: "Road Narrow On Both Sides",shortDescription: "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide.", levelId: 1))
        list.append(Question(id: 5, image: UIImage(named: "Road_Narrows_In_The_Right")!, text: "Road Narrows In The Right", correctAnswer: true,character: "Road Narrows In The Right",shortDescription: "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide.", levelId: 1))
        list.append(Question(id: 5, image: UIImage(named: "round_about")!, text: "Round About", correctAnswer: true,character: "Round About",shortDescription: "Indicates that a roundabout is ahead. Slow down when you see this sign.", levelId: 1))
        
        
        
        list.append(Question(id: 3, image: UIImage(named: "Height_Limit_Ahead")!, text: "Height Limit Ahead", correctAnswer: false,character: "Height Limit Ahead",shortDescription: "Prohibiting vehicles above a certain height are used mainly at non—arch bridges and other structures.These signs should not be used at arch bridges, as the main risk to these is from vehicles which, although low enough to pass through the central part of the arch, might strike the curved shoulder of the structure.", levelId: 2))
        list.append(Question(id: 4, image: UIImage(named: "Road_Narrow_On_Both_Sides")!, text: "Road Narrow On Both Sides", correctAnswer: true,character: "Road Narrow On Both Sides",shortDescription: "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide.", levelId: 3))
        list.append(Question(id: 5, image: UIImage(named: "Road_Narrows_In_The_Right")!, text: "Road Narrows In The Right", correctAnswer: true,character: "Road Narrows In The Right",shortDescription: "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide.", levelId: 4))
        list.append(Question(id: 5, image: UIImage(named: "round_about")!, text: "Round About", correctAnswer: true,character: "Round About",shortDescription: "Indicates that a roundabout is ahead. Slow down when you see this sign.", levelId: 5))
       
      
       
       
      
   
    }
}
