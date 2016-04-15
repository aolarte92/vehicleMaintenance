//
//  listvehicleViewController.swift
//  vehicleMaintenance
//
//  Created by centro docente de computos on 4/15/16.
//  Copyright © 2016 tallerSoftware. All rights reserved.
//

import UIKit

class listvehicleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
 {
    
    var vehicles = [Vehicle]()
    let cellIdentifier = "vehicleCell"

    
    @IBOutlet weak var tableView: UITableView!



    override func viewDidLoad() {
        super.viewDidLoad()
        vehicles = Vehicle.vehicles()
        // Do any additional setup after loading the view.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let  detailVC = segue.destinationViewController as?
            detailVehiculeViewController {
                if let vehicule = sender as? Vehicle {
                    detailVC.modelo = vehicule
                }
        }
    }
    

    
    // MARK: - UITableViewDataSource
  
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        let vehicle = vehicles[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        cell?.textLabel?.text = vehicle.mark
        cell?.detailTextLabel?.text = String(vehicle.kilometers!)
        
        return cell!
    }
    
    // MARK: - UITableViewDelegate
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let vehicle = vehicles[indexPath.row]
        self.performSegueWithIdentifier("detailvehicle", sender: vehicle)
    }
    
}

    
    
    



    



