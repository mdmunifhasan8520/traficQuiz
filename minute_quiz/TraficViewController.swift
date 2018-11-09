//
//  TraficViewController.swift
//  minute_quiz
//
//  Created by MacBook Pro on 11/10/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class TraficViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    
    
    var data = [
        
        
        DataMadal(headerImage: "alert23", headerName: "Alert Signs", subType: ["Trafic light","Round About", "Double Bend First Left", "Dual Carriageway Ends", "Height Limit Ahead", "Road Narrow On Both Sides","Road Narrows In The Right","Sharp Bend To The Right","Steep Hill Downwards","Steep Hill Upwards","Two Way Traffic Straight Ahead"], subTypeImage: ["trafic_light","round_about", "Double_Bend_First_Left", "Dual_Carriageway_Ends", "Height_Limit_Ahead", "Road_Narrow_On_Both_Sides","Road_Narrows_In_The_Right","sharp_bend_to_the_right","Steep_Hill_Downwards","Steep_Hill_Upwards","Two_way_Traffic_Straight_Ahead"], isExpandable: false),
        DataMadal(headerImage: "manban2", headerName: "Mandatory Ban Signs", subType: ["No Overtaking","No Rickshaws","No Trucks","No U Turn","No Use Of Horn"], subTypeImage: ["No_Overtaking","No_Rickshaws","No_Trucks","No_U_Turn","No_Use_Of_Horn"], isExpandable: false),
        DataMadal(headerImage: "mango2", headerName: "Mandatory Go Signs", subType: ["Ahead Only","Route For Cycles Only","Route For Rickshaws Only","Turn Left","Turn Right"], subTypeImage: ["Ahead_Only","Route_For_Cycles_Only","Route_For_Rickshaws_Only","Turn_Left","Turn_Right"], isExpandable: false),
        DataMadal(headerImage: "GO", headerName: "Guiding Information Signs", subType: ["Bike Route","Exit","Parking","Post Office"], subTypeImage: ["Bike_Route","Exit","Parking","Post_Office"], isExpandable: false),
        DataMadal(headerImage: "Speed_Limit_Road", headerName: "Similar Signs & Roadmarks", subType: ["Pedestrian Crossing road","Speed Limit Road"], subTypeImage: ["Pedestrian_Crossing_road","Speed_Limit_Road"], isExpandable: false)
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.tableFooterView = UIView()
        // Do any additional setup after loading the view, typically from a nib.
        /*
         if let x = UserDefaults.standard.object(forKey: "ckeck") as? UITableView {
         tblView = x
         }*/
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension TraficViewController: UITableViewDelegate, UITableViewDataSource {
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
        //cell.textLabel?.text = data[indexPath.section].subType[indexPath.row]
        //print(data[indexPath.section].subType[indexPath.row])
        cell.cellTitle.text = data[indexPath.section].subType[indexPath.row]
        cell.cellImageView.image = UIImage(named: data[indexPath.section].subTypeImage[indexPath.row])
        //cell.layer.cornerRadius = 10
        // cell.clipsToBounds = true
        //cell.backgroundColor = UIColor.clear
        
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        /*
         let bgColorView = UIView()
         bgColorView.backgroundColor = UIColor.clear
         cell.selectedBackgroundView = bgColorView
         */
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //Set
        
        
        tblView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.leftInAnimation(forIndex: indexPath.row)
        
    }
    
    
}

extension TraficViewController: HeaderDelegate {
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

