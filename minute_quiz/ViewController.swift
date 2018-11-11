//
//  ViewController.swift
//  minute_quiz
//
//  Created by MacBook Pro on 7/29/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //create a QuestioBank object
    let allQuestions = QuestionBank()
    
    //let level = LevelViewController()
    
    //create a variable
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    //for track the score
    var homeBestScore: Int = 0
    var bestScore: Int = 0
    var score : Int = 0
    
    //for track the current and wrong answer
    var correctAnswerCount : Int = 0
    var wrongAnswerCount : Int = 0
    
    //correct answer collection
    var myCorrectAnswerCollecction = [Int]()
    var myWrongAnswerCollecction = [Int]()
    
    var storedCorrentAnswerArr = [Int]()
    var storedWrongAnswerArr = [Int]()
    
    
    //for the Timer
    var startInt = 20
    var startTimer = Timer()
    
    //var button1Color = UIColor()
 
    
    //ui elements from the storyboard
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var correctAnswerCountLabel: UILabel!
    @IBOutlet weak var wrongAnswerCountLabel: UILabel!
    @IBOutlet weak var progressHud: UIImageView!
    @IBOutlet weak var Button1Label: UIButton!
    @IBOutlet weak var Button2Label: UIButton!
    @IBOutlet weak var LevelId: UILabel!
    
   
    
    
    //create instance of UserDefaults
    let userDefaults = UserDefaults.standard
    
    //for animation
    var senderValue = 0
    var isGoingToNext = false
    var heartImages: [UIImage] = []
    
    var selectedLevel: Int = 0
    var levelQuestions: [Question] = []
    
    
    //var levelQuestionArr = [QuestionBank]()
    
    
    //for heart animation
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        var imageArray: [UIImage] = []
        
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        
        return imageArray
    }
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 1
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //tblView.tableFooterView = UIView()
        print("this is gameplay")
        levelQuestions = allQuestions.list.filter { (q) -> Bool in
            q.levelId == self.selectedLevel
        };
        
        
        //heart animation
        heartImages = createImageArray(total: 24, imagePrefix: "heart")
        
        //permanent Data storage
        bestScore = userDefaults.integer(forKey: "hscore")
        homeBestScore = userDefaults.integer(forKey: "hscoreforGamePlay")
        storedCorrentAnswerArr = userDefaults.object(forKey: "scaarr") as? [Int] ?? [Int]()
        storedWrongAnswerArr = userDefaults.object(forKey: "swaarr") as? [Int] ?? [Int]()
        
        //display First Question
        gameStart()
    }

    @IBAction func Home(_ sender: AnyObject) {
        /*if bestScore > homeBestScore {
            bestScore = homeBestScore
        }*/
        //userDefaults.set("\(imageArray[0])", forKey: "savedImage")
        //UserDefaults.standard.set(use.text, forKey: "name")
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if(isGoingToNext) {return}
        //senderValue = 1
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = true
            //sender.pulsate()
           senderValue += 1
            Button1Label.isEnabled = false
            Button2Label.isEnabled = false
        } else if sender.tag == 2 {
            pickedAnswer = false
           // sender.shake()
            senderValue += 2
            Button1Label.isEnabled = false
            Button2Label.isEnabled = false
        }
        checkAnswer()
        
        //after checking the answer proceed to the next question
        isGoingToNext = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.questionNumber = self.questionNumber + 1
            self.nextQuestion()
            self.isGoingToNext = false
        })
}
    
    func gameStart() {
        myCorrectAnswerCollecction.removeAll()
        myWrongAnswerCollecction.removeAll()
//        allQuestions.list.sort { (a, b) -> Bool in (arc4random() % 6) > 3}
        levelQuestions.sort { (a, b) -> Bool in (arc4random() % 6) > 3}
        
        //for start the timer
        timer.text = "\(startInt)"
        startTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startGameTimer), userInfo: nil, repeats: true)
        
        nextQuestion()

    }
    
    func summeryUI() {
        //for correct and wrong anser counter
        correctAnswerCountLabel.text = "\(correctAnswerCount)"
        wrongAnswerCountLabel.text = "\(wrongAnswerCount)"
        scoreLabel.text = "Score: \(score)"
        
        //best score set permanently
        if score > bestScore {
            bestScore = score
            userDefaults.set("\(bestScore)", forKey: "hscore")
        }
        //for correct and wrong answer collection
        let newCorrectAnswers = myCorrectAnswerCollecction.filter { (id) -> Bool in
            return (storedCorrentAnswerArr.index(of: id) == nil) ? true : false
        }
        storedCorrentAnswerArr.append(contentsOf: newCorrectAnswers)
        userDefaults.set(storedCorrentAnswerArr.sorted(), forKey: "scaarr")
        
        //print("sorted:\(storedCorrentAnswerArr.sorted())")
        //print(myCorrectAnswerCollecction)
        //print(newCorrectAnswers)
        //print(storedCorrentAnswerArr)
   }
    
    func updateUI() {
        //for correct and wrong anser counter
        correctAnswerCountLabel.text = "\(correctAnswerCount)"
        wrongAnswerCountLabel.text = "\(wrongAnswerCount)"
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 5"
        progressBar.frame.size.width = (view.frame.size.width / 5) * CGFloat(questionNumber + 1)
    
        
        Button1Label.isEnabled = true
        Button2Label.isEnabled = true
    }
    
    func nextQuestion() {
   
        print(selectedLevel)
        print(questionNumber)
        print(levelQuestions)
        if questionNumber <= levelQuestions.count - 1 {
            questionImage.image = levelQuestions[questionNumber].questionImage
            questionLabel.text = levelQuestions[questionNumber].questionText
         
            
            Button1Label.backgroundColor = UIColor(red: 0.576, green: 0.153, blue: 0.561, alpha: 1.0)
            Button2Label.backgroundColor = UIColor(red: 0.576, green: 0.153, blue: 0.561, alpha: 1.0)
           
            //print("after condition:\(level1)")
            
            updateUI()
        } else {
            
            summeryUI()
            
            startTimer.invalidate()
            
            //create an AlertViewController object
            let alert = UIAlertController(title: "Awesome", message: "You have finished the quiz", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
                { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    func checkAnswer() {
        let currentQuestion = levelQuestions[questionNumber]
        //let currentQuestion = allQuestions.list[levelQuestions]
        if currentQuestion.answer == pickedAnswer {
            //print("you got it")
            animate(imageView: progressHud, images: heartImages)
            if senderValue == 1 {
                Button1Label.backgroundColor = UIColor.green
                Button1Label.pulsate()
            } else if senderValue == 2 {
                Button2Label.backgroundColor = UIColor.green
                Button2Label.pulsate()
            }
            score = score + 1
            correctAnswerCount = correctAnswerCount + 1
            myCorrectAnswerCollecction.append(currentQuestion.id)
         } else {
            //print("shame")
            if senderValue == 1 {
                Button1Label.backgroundColor = UIColor.red
                Button1Label.shake()
              
            } else if senderValue == 2 {
                Button2Label.backgroundColor = UIColor.red
                Button2Label.shake()
            }
            wrongAnswerCount = wrongAnswerCount + 1
            myWrongAnswerCollecction.append(currentQuestion.id)
        }
        senderValue = 0
    }
    
    func startOver() {
        wrongAnswerCount = 0
        correctAnswerCount = 0
        score = 0
        questionNumber = 0
        startInt = 3000
        senderValue = 0
        
        gameStart()
    }
    
    @objc func startGameTimer() {
        startInt -= 1
        timer.text = "\(startInt)"
        
        if startInt == 0 {
            startTimer.invalidate()
            summeryUI()
            let alert = UIAlertController(title: "Times Up", message: "could not answer all question", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
}

//trafic
/*
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = HeaderView(frame: CGRect(x: 10, y: 10, width: tblView.frame.size.width - 20, height: 80))
        headerView.delegate = self
        headerView.secIndex = section
        headerView.btn.setTitle(data[section].headerName, for: .normal)
        headerView.btn2.setImage(UIImage(named: data[section].headerImage!), for: .normal)
        
        return headerView
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data[section].isExpandable {
            return data[section].subType.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cells") as! MyTableViewCell
     
        cell.cellTitle.text = data[indexPath.section].subType[indexPath.row]
        cell.cellImageView.image = UIImage(named: data[indexPath.section].subTypeImage[indexPath.row])
    
        
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if data[indexPath.section].isExpandable {
            return 80
        } else {
            return 0
        }
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "showDetails") {
            
            let dvc = segue.destination as! DetailsViewController
            
            if let indexPath = self.tblView.indexPathForSelectedRow {
                dvc.sentData1 = data[indexPath.section].subType[indexPath.row]
                //dvc.sentData2 = descriptionList[indexPath.row] as String
                //dvc.sentData3 = imageList[indexPath.row] as String
            }
            
        }
    }
    */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //Set
        
        
        tblView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.leftInAnimation(forIndex: indexPath.row)
        
    }
    
    
}

extension ViewController: HeaderDelegate {
    func calHeader(idx: Int) {
        
        data[idx].isExpandable = !data[idx].isExpandable
        
        tblView.reloadSections([idx], with: .automatic)
        print(data[idx].isExpandable)
    }
    
    
}

extension UITableViewCell {
    
    /// Table view cell fade in animation for best way to represent
    /// tableview
    ///
    /// - Parameters:
    ///   - duration: animation duration default value 0.1
    ///   - index: cell index
    func leftInAnimation(withDuration duration: Double = 0.5,withDelay delay : Double = 0.08,forIndex index : Int) {
        self.transform = CGAffineTransform(translationX: -self.bounds.width, y: 0)
        UIView.animate(withDuration: duration,delay: delay * Double(index),animations: {
            self.transform = CGAffineTransform(translationX: 0, y: 0)
        })
    }
}
*/



