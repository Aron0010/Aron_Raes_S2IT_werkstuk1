//
//  TableViewController.swift
//  Aron_Raes_S2IT_werkstuk1
//
//  Created by Aron Raes on 18/04/18.
//  Copyright © 2018 Aron Raes. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //ITEMS AANMAKEN
    var item1 = Item(voornaam: "Sam" ,naam: "Deroo",telnummer:0491827365,gemeente: "Torhout",postcode:1483,straat:"werkstukstraat",huisnummer:1, image:"sam",latitude:50.874614,longitude:4.181396)
    
    var item2 = Item(voornaam: "Ivan" ,naam: "Zaytsev",telnummer:0456473829,gemeente: "Rome",postcode:1742,straat:"stagelaan",huisnummer:89, image:"ivan",latitude:41.886987,longitude:12.490328)
    
      var item3 = Item(voornaam: "Alexander" ,naam: "Butko",telnummer:0456473829,gemeente: "Moskou",postcode:1742,straat:"stagelaan",huisnummer:89, image:"butko",latitude:55.760557,longitude:37.569074)
    
   
    //ARRAY AANMAKEN
    var itemArray = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ITEMS IN ARRAY
        itemArray.append(item1)
        itemArray.append(item2)
        itemArray.append(item3)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return itemArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
     
     // Configure the cell...
     
     cell.imageView?.image = UIImage(named: itemArray[indexPath.row].image)//CELL IMAGE INSTELLEN -> GAAT ZOEKEN NAAR EEN IMAGE IN ASSETS MET MEEGEGEVEN NAAM
     cell.textLabel?.text = itemArray[indexPath.row].voornaam//CELL TITEL = TITEL VAN ITEM
     cell.detailTextLabel?.text = itemArray[indexPath.row].naam//CELL TITEL = TITEL VAN ITEM
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextvc = segue.destination as? ItemViewController {
            let indexpath = self.tableView.indexPathForSelectedRow!
            nextvc.item = self.itemArray[indexpath.row]
        }
    
    
}
}
