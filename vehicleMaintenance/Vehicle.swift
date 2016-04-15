//
//  Vehicle.swift
//  vehicleMaintenance
//
//  Created by centro docente de computos on 4/15/16.
//  Copyright © 2016 tallerSoftware. All rights reserved.
//

import Foundation


class Vehicle {
    
    // MARK: - Properties
    var model:String?
    var mark:String?
    var kilometers:Int?
    var oilchange:String?
    var tank:Int?
    var soat:String?
    var tecno:String?
    
    // MARK: Init
    init(model:String, mark:String, kilometers:Int, oilchange:String, tank:Int, soat:String, tecno:String){
        self.model = model
        self.mark = mark
        self.kilometers = kilometers
        self.oilchange = oilchange
        self.tank = tank
        self.soat = soat
        self.tecno = tecno
        
    }
    
    convenience init(){
        self.init(model:"", mark:"",kilometers:0, oilchange:"", tank:0, soat:"", tecno:"")
    }
    
    // MARK: Utils
    class func vehicles() ->[Vehicle]{
        var data = [Vehicle]()
        let rawData = [
            ["model":"2016", "mark":"Ferrari", "kilometers":850, "oilchange": "1 de abril de 2016", "tank":70,"soat":"1 de febrero de 2017","tecno":"2 de marzo de 2017"],
            ["model":"1999", "mark":"Mazda", "kilometers":150000, "oilchange": "14 de abril de 2016", "tank":40,"soat":"1 de mayo de 2016","tecno":"2 de marzo de 2016"]

        ]
        
        for item in rawData{
            let vehicle = Vehicle(model: item["model"] as! String, mark: item["mark"] as! String, kilometers: item["kilometers"] as! Int, oilchange: item["oilchange"] as! String,tank: item["tank"] as! Int, soat: item["soat"] as! String, tecno: item["tecno"] as! String)
            
            data.append(vehicle)
        }
        
        return data
    }
    
}
