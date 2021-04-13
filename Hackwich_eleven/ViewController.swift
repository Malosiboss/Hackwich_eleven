//
//  ViewController.swift
//  Hackwich_eleven
//
//  Created by Noah Nua on 4/13/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
//UHWO lat long: 21.357033980587442, -158.0561890709267
//Dickyʻs Barbecue Pit lat Long 21.343267331934964, -158.07239353208013

    
    //set up nitial location (lat,long) for our map
    
    let initialLocation = CLLocation (latitude: 21.357033980587442, longitude: -158.0561890709267)
    
    //Declare a region radius around our initilization
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        let restaurantOne = Resturant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude:21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        let restaurantTwo = Resturant(title: "Dickyʻs Barbecue Pit", type: "American", coordinate: CLLocationCoordinate2D(latitude:21.343267331934964, longitude: -158.07239353208013))
        mapView.addAnnotation(restaurantTwo)
    }
    func centerMapOnLocation(location:CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion,animated:true)
    }

}

