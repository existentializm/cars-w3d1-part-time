//
//  CarsTableViewController.swift
//  Demo
//
//  Created by Sam Meech-Ward on 2017-05-31.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class CarsTableViewController: UITableViewController {
    
    var cars = [Car]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let ferrari = Car()
        ferrari.make = "Ferrari"
        ferrari.year = 2017
        ferrari.color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        cars.append(ferrari)
        
        let mazda = Car()
        mazda.make = "Mazda"
        mazda.year = 2017
        mazda.color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        cars.append(mazda)
        
        let tesla = Car()
        tesla.make = "Tesla"
        tesla.year = 2018
        tesla.model = "model 3"
        tesla.color = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        cars.append(tesla)
        
        cars.append(ferrari)
        cars.append(mazda)
        cars.append(tesla)
        cars.append(ferrari)
        cars.append(mazda)
        cars.append(tesla)
        cars.append(ferrari)
        cars.append(mazda)
        cars.append(tesla)
        cars.append(ferrari)
        cars.append(mazda)
        cars.append(tesla)
        cars.append(ferrari)
        cars.append(mazda)
        cars.append(tesla)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CarTableViewCell

        let car = cars[indexPath.row]
        
        cell.titleLabel?.text = car.make
        cell.yearlabel.text = String(describing: car.year)
        cell.priceLabel.text = String(describing: car.price)
        
        cell.carImageView.image = UIImage(named: "car")
        
        cell.backgroundColor = car.color

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
