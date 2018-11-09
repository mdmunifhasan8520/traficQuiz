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
            
            detailTextView.text = "A road signal for directing vehicular traffic by means of colored lights, typically red for stop, green for go, and yellow for proceed with caution. Also called stoplight, traffic signal."
            
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
            
            detailTextView.text = "Indicates that a roundabout is ahead. Slow down when you see this sign."
            
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
            
            detailTextView.text = "These signs indicate that ahead are dangerous or unexpected bends in the road, some being continuous, others being sharp-ended.Signs indicate the curves are to the left whether the degree to which the curves or bends are sharp. They may also indicate a series of curves or bends ahead."
            
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
            
            detailTextView.text = "A dual carriageway is a road which has two lanes of traffic travelling in each direction with a strip of grass or concrete down the middle to separate the two lots of traffic."
        }
        if detailTitle.text == "Height Limit Ahead" {
            
            detailTextView.text = "Prohibiting vehicles above a certain height are used mainly at non—arch bridges and other structures.These signs should not be used at arch bridges, as the main risk to these is from vehicles which, although low enough to pass through the central part of the arch, might strike the curved shoulder of the structure."
            
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
            
            detailTextView.text = "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide."
            
            
        }
        if detailTitle.text == "Road Narrows In The Right" {
            
            detailTextView.text = "Narrow means less wide or to make less wide. When you narrow down your choices, you decrease the number of choices. A road might be too narrow for a car. When used to describe something physical such as a street or hips, narrow simply means not wide."
            
            
        }
        if detailTitle.text == "Sharp Bend To The Right" {
            
            detailTextView.text = "These signs indicate that ahead are dangerous or unexpected bends in the road, some being continuous, others being sharp-ended.Signs indicate the curves are to the right whether the degree to which the curves or bends are sharp. They may also indicate a series of curves or bends ahead."
            
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
            
            detailTextView.text = "The sign indicates a steep hill downwards.Having or being a slope or gradient approaching the perpendicular."
            
            
        }
        if detailTitle.text == "Steep Hill Upwards" {
            
            detailTextView.text = "The sign indicates a steep hill upwards.A steep slope rises at a very sharp angle and is difficult to go up."
            
            
        }
        
        if detailTitle.text == "Two Way Traffic Straight Ahead" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road."
            
        }
        if detailTitle.text == "No Overtaking" {
            
            detailTextView.text = "The no overtaking road sign is circular with a red border meaning that it is giving drivers an order. As the no overtaking sign is regulatory, it is illegal to overtake. The no overtaking restriction ends when the lines in the road change from a continuous white line, to a broken line."
            
        }
        if detailTitle.text == "No Rickshaws" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "No Trucks" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "No U Turn" {
            
            detailTextView.text = "Where it is prohibited for vehicles to reverse their direction by makingaU turn. This will usually be because the manoeuvre is dangerous or will cause congestion, such as at a gap in the median on a high-speed road, or at a busy junction."
            
        }
        if detailTitle.text == "No Use Of Horn" {
            
            detailTextView.text = "Thissign is used outside hospitalsin particular and elsewhere in built-up areas where the use of vehicle hornsis prohibited."
            
        }
        if detailTitle.text == "Ahead Only" {
            
            detailTextView.text = "This sign indicates that at the junction vehicular traffic may proceed in a forward direction only. Typically the sign will be used at the approach to a junction in a one way system to indicate the direction of traffic flow.Supplementary plate D13 One Way may be added to explain why the sign is being used."
            
        }
        if detailTitle.text == "Route For Cycles Only" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "Route For Rickshaws Only" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "Turn Left" {
            
            detailTextView.text = "Vehicular traffic may only proceed in the direction indicated by the arrow.Typically the sign will be used at a junction in a one way system. It is also commonly used on roundabout central islands (opposite entrances) to stop drivers going the wrong way round the roundabout. Another use isto indicate the direction offlowto traffic joining a dual carriageway from a side road."
            
        }
        if detailTitle.text == "Turn Right" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "Bike Route" {
            
            detailTextView.text = "It consists of interstate long-distance cycling routes that use multiple types of bicycling infrastructure, including off-road paths, bicycle lanes, and low-traffic roads."
            
        }
        if detailTitle.text == "Exit" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "Parking" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "Post Office" {
            
            detailTextView.text = "A two-way street is a street that allows vehicles to travel in both directions. On most two-way streets, especially main streets, a line is painted down the middle of the road to remind drivers to stay on their side of the road"
            
        }
        if detailTitle.text == "Pedestrian Crossing road" {
            
            detailTextView.text = "A pedestrian crossing (British English) or crosswalk (American English) is a place designated for pedestrians to cross a road. Crosswalks are designed to keep pedestrians together where they can be seen by motorists, and where they can cross most safely across the flow of vehicular traffic."
            
        }
        if detailTitle.text == "Speed Limit Road" {
            
            detailTextView.text = "Road speed limits are used in most countries to set the maximum (or minimum in some cases) speed at which road vehicles may legally travel on particular stretches of road. ... Speed limits are normally indicated on a traffic sign."
            
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
