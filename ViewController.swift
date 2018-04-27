//
//  ViewController.swift
//  Aron_Raes_S2IT_werkstuk1
//
//  Created by Aron Raes on 18/04/18.
//  Copyright © 2018 Aron Raes. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var myMapView: MKMapView!
    
    var locations = [
        ["title": "Delhaize",    "latitude": 50.872762, "longitude": 4.248058],
        ["title": "Aldi ",   "latitude": 50.870849, "longitude": 4.252981],
        ["title": "Kerk ",   "latitude": 50.871028, "longitude": 4.265655]
    ]
    
      var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            self.myMapView.addAnnotation(annotation)
            self.myMapView.showAnnotations(self.myMapView.annotations, animated: true)
        }
        
        
        
        
        
      
        
    }
    
        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   


}

