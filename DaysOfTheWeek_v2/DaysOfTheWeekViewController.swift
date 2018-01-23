//
//  DaysOfTheWeekViewController.swift
//  DaysOfTheWeek_v2
//
//  Created by Taylor Bills on 1/23/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import UIKit

class DaysOfTheWeekViewController: UIViewController {
    
    // MARK:    Properties
    
    @IBOutlet weak var daysOfTheWeekTableView: UITableView!
    
    var daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    // MARK:    Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daysOfTheWeekTableView.dataSource = self
        daysOfTheWeekTableView.delegate = self
    }
    
    /*
    // MARK:    Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK:    TableView Extension

extension DaysOfTheWeekViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK:    Conform to Data Source protocols
    
    // Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfTheWeek.count
    }
    
    // Cell for row at
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        let day = daysOfTheWeek[indexPath.row]
        cell.textLabel?.text = day
        return cell
    }
    
    // When user didSelect on row we are going to set the indexPath logged into the console - This is just for us to see when it is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
