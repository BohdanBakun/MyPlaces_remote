//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Богдан Бакун on 17.04.2023.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "McDonald's", "Хряк", "Cалобие", "Сенатор Grill House",
        "Суши-Студия", "Колыба", "Армения", "Абажур",
        "RiverSide", "Orange Bar", "ФОТЕЛЬ",
        "La Storia", "Вареничная Балуваная Галя", "Велюров", "Цапа"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
