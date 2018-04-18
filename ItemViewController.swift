//
//  ItemViewController.swift
//  Aron_Raes_S2IT_werkstuk1
//
//  Created by Aron Raes on 18/04/18.
//  Copyright © 2018 Aron Raes. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    var item:Item?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        self.lblItemTitel.text = item?.voornaam
//        self.lblItemTitel.text = item?.naam
//        self.imgItemImage.image = UIImage(named: item!.image)
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
