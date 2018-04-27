//
//  Item.swift
//  Aron_Raes_S2IT_werkstuk1
//
//  Created by Aron Raes on 18/04/18.
//  Copyright © 2018 Aron Raes. All rights reserved.
//

import UIKit

class Item: NSObject {
    var voornaam:String = ""
    var naam:String = ""
    var telnummer:Int
    var gemeente:String = ""
    var postcode:Int
    var straat:String = ""
    var huisnummer:Int 
    var image:String = ""  //IMAGE GEWOON ALS STRING MEEGEGEVEN -> MOET WEL OVEREENKOMEN MET NAAM
    var latitude:Double
    var longitude: Double
    
    
    init(voornaam: String ,naam: String,telnummer:Int,gemeente: String,postcode:Int,straat:String,huisnummer:Int, image:String,latitude:Double,longitude:Double) {
        self.voornaam = voornaam
        self.naam = naam
        self.telnummer = telnummer
        self.gemeente = gemeente
        self.postcode = postcode
        self.straat = straat
        self.huisnummer = huisnummer
        self.image = image
        self.latitude = latitude
        self.longitude = longitude
    }
}
