//
//  DetailViewController.swift
//  DaysOfTheWeek_v2
//
//  Created by Taylor Bills on 1/23/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK:    Properties
    var day: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        title = day
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
