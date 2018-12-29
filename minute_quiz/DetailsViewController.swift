//
//  DetailsViewController.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/13/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit
import WebKit

class DetailsViewController: UIViewController, WKNavigationDelegate {
    
    var sentData1: String!
    
    @IBOutlet weak var detailTextView: UITextView!
    
    @IBOutlet weak var detailTitle: UILabel!
    
   
    @IBOutlet weak var myWeb: WKWebView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sentData1
        detailTitle.text = sentData1

        // Do any additional setup after loading the view.
        
        if detailTitle.text == "Trafic light" {
            
            detailTextView.text = "Traffic signals change from green to yellow to warn approaching vehicles that the signal is about to turn red. The length of the yellow signal depends on the speed limit of the road. Most urban intersections have a yellow time of four to six seconds. The yellow signal means stop if it is safe to do so and the red signal implies vehicles to stop immediately at the exact moment of seeing it."
            
            let htmlPath = Bundle.main.path(forResource: "html/index_2_light", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
        }
        
        if detailTitle.text == "Round About" {
            
            detailTextView.text = "Indicates that a circular driveway ahead. Slowly drive while turning alongside the bend."
            
            let htmlPath = Bundle.main.path(forResource: "html/index", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
        }
        if detailTitle.text == "Double Bend First Left" {
            
            detailTextView.text = "There are two bends ahead, First is to the left. Slowly drive while turning alongside bends."
            
            let htmlPath = Bundle.main.path(forResource: "html/Double_Bend_First_Left", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
            
        }
        if detailTitle.text == "Dual Carriageway Ends" {
            
            detailTextView.text = "Dual carriageway of the road meets ahead and becomes one."
        }
        if detailTitle.text == "Height Limit Ahead" {
            
            detailTextView.text = "Vehicles having the height above 4.5meters can't go through the road ahead."
            
            let htmlPath = Bundle.main.path(forResource: "html/Height_limit", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
            
        }
        if detailTitle.text == "Road Narrow On Both Sides" {
            
            detailTextView.text = "Road narrows infront from both sides. Watch out for vehicles alongside."
            
            
        }
        if detailTitle.text == "Road Narrows In The Right" {
            
            detailTextView.text = "Road narrows ahead on the right side. Watch out for the vehicles on your right-side."
            
            
        }
        if detailTitle.text == "Sharp Bend To The Right" {
            
            detailTextView.text = "There is a bend all at once right-side off the road. Turn carefully."
            
            let htmlPath = Bundle.main.path(forResource: "html/Sharp_bend_right", ofType: "html")
            let folderPath = Bundle.main.bundlePath
            let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
            do {
                let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
                myWeb.loadHTMLString(htmlString as String, baseURL: baseUrl)
            } catch {
                // catch error
            }
            
        }
        
        if detailTitle.text == "Steep Hill Downwards" {
            
            detailTextView.text = "Indicates that the road ahead is declining. Keep your leg on the break while driving forward."
            
            
        }
        if detailTitle.text == "Steep Hill Upwards" {
            
            detailTextView.text = "The road is steeping upright ahead. Speed-up while driving."
            
            
        }
        
        if detailTitle.text == "Two Way Traffic Straight Ahead" {
            
            detailTextView.text = "Indicates that it's a two way double-lane road. One will be placed on either side of the road in good time before the road merges, and again on either side where the road merges."
            
        }
        if detailTitle.text == "No Overtaking" {
            
            detailTextView.text = "Do not speed-up to overtake front vehicles. Drive along with your queue."
            
        }
        if detailTitle.text == "No Rickshaws" {
            
            detailTextView.text = "No rickshaw is allowed in this road."
            
        }
        if detailTitle.text == "No Trucks" {
            
            detailTextView.text = "No truck is allowed in this road."
            
        }
        if detailTitle.text == "No U Turn" {
            
            detailTextView.text = "There is bend ahead, but u-turn is prohibited as its one way road."
            
        }
        if detailTitle.text == "No Use Of Horn" {
            
            detailTextView.text = "Using of horn is prohibited in this area."
            
        }
        if detailTitle.text == "Ahead Only" {
            
            detailTextView.text = "One way road, drive forward only."
            
        }
        if detailTitle.text == "Route For Cycles Only" {
            
            detailTextView.text = "This route is only for bicycles."
            
        }
        if detailTitle.text == "Route For Rickshaws Only" {
            
            detailTextView.text = "This route is only for rickshaws. No automobile vehicles can enter."
            
        }
        if detailTitle.text == "Turn Left" {
            
            detailTextView.text = "Indicates there's a bend on the left-side of the road. Turn left slowly."
            
        }
        if detailTitle.text == "Turn Right" {
            
            detailTextView.text = "Indicates there's a bend on the right-side of the road. Turn right slowly."
            
        }
        if detailTitle.text == "Bike Route" {
            
            detailTextView.text = "This side of the road is only for bicycle/motocycle. "
            
        }
        if detailTitle.text == "Exit" {
            
            detailTextView.text = "The leaving path is this way."
            
        }
        if detailTitle.text == "Parking" {
            
            detailTextView.text = "Parking ahead, drive steady and watch out other vehicles."
            
        }
        if detailTitle.text == "Post Office" {
            
            detailTextView.text = "Post-office is ahead, drive slowly."
            
        }
        if detailTitle.text == "Pedestrian Crossing road" {
            
            detailTextView.text = "Public crossing ahead in this way. Slow down your vehicle as caution."
            
        }
        if detailTitle.text == "Speed Limit Road" {
            
            detailTextView.text = "Pedestrian walk ahead. Don't drive above 45km in this route."
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
