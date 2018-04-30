//
//  ItemViewController.swift
//  Aron_Raes_S2IT_werkstuk1
//
//  Created by Aron Raes on 18/04/18.
//  Copyright © 2018 Aron Raes. All rights reserved.
//

import UIKit
import MapKit

class ItemViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lblVoornaam: UILabel!
    
    var item:Item?
    
    @IBOutlet weak var myDetailMap: MKMapView!
    
    @IBOutlet weak var lblNaam: UILabel!
    
    @IBOutlet weak var lblAdres: UILabel!
    
    @IBOutlet weak var lblTel: UILabel!
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .white
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    
     var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblVoornaam.text = "Voornaam: \(String(describing: item!.voornaam))"
        
        self.lblNaam.text = "Naam: \(String(describing: item!.naam))"
        
        self.lblAdres.text = "Adres: \(item!.straat) \(item!.huisnummer), \(item!.postcode) \(item!.gemeente)"
        
        self.lblTel.text = "Tel: \(String(describing: item!.telnummer))"
        
        self.imageView.image = UIImage(named: item!.image)
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        
        let annotation = MKPointAnnotation()
        annotation.title = item?.voornaam
        annotation.coordinate = CLLocationCoordinate2D(latitude: (item?.latitude)!, longitude: (item?.longitude)!)
        self.myDetailMap.addAnnotation(annotation)
        self.myDetailMap.showAnnotations(self.myDetailMap.annotations, animated: true)
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
//        if let nextvc = segue.destination as? PictureViewController {
//            let indexpath = self.tableView.indexPathForSelectedRow!
//            nextvc.item = self.itemArray[indexpath.row]
//     }


}



}
