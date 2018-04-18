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
    var image:String = ""  //IMAGE GEWOON ALS STRING MEEGEGEVEN -> MOET WEL OVEREENKOMEN MET NAAM IN ASSETS
    
    init(voornaam: String ,naam: String, image:String) {
        self.voornaam = voornaam
        self.naam = naam
        self.image = image
    }
}
