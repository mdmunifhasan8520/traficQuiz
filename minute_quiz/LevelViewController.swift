//
//  LevelViewController.swift
//  minute_quiz
//
//  Created by MacBook Pro on 8/9/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    
    @IBOutlet weak var LevelCollectionView: UICollectionView!
    
   // var QuestionSet = QuestionBank()
    //var myVc = ViewController()
    
    //var questionNumber = 0
    
    var name = ["Alert Signs","Guiding Information Signs","Mandatory Ban Signs","Mandatory Go Signs","Similar Signs & Roadmarks"]
    var myLevelIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //self.LevelCollectionView.animate(animation: myCoolTableAnimation)
       // myVc.questionNumber = myLevelIndex

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LEVEL_CELL", for: indexPath) as! LevelViewCell
        //cell.MyLabelName.text = name[indexPath.item]
        cell.NameLabel.text = name[indexPath.item]
        
      
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myLevelIndex = indexPath.item + 1
        print("MY lavel:\(myLevelIndex)")
        
        if myLevelIndex == 2 {
            print("this is two")
            //self.isAccessibilityElement = true
            //collectionView.cellForItem(at: indexPath)?.
            
        }
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            let index = LevelCollectionView.indexPath(for: sender as! UICollectionViewCell)
            //print("welcome:\(index)")
            vc?.selectedLevel = ((index?.item)! + 1)
        }
    }
    

  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
