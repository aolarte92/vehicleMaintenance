//
//  detailVehiculeViewController.swift
//  vehicleMaintenance
//
//  Created by Felipe Palacio on 4/15/16.
//  Copyright © 2016 tallerSoftware. All rights reserved.
//

import UIKit

class detailVehiculeViewController: UIViewController {
    
    // MARK - IBOUTLETS
   
    @IBOutlet weak var model: UILabel!
    
    @IBOutlet weak var mark: UILabel!
    
    @IBOutlet weak var kilometers: UILabel!
    
    @IBOutlet weak var oilchange: UILabel!
    
    @IBOutlet weak var tenco: UILabel!
    
    @IBOutlet weak var soat: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
        //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
