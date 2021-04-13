//
//  Resturant.swift
//  Hackwich_eleven
//
//  Created by Noah Nua on 4/13/21.
//

import UIKit
import MapKit

class Resturant: NSObject, MKAnnotation{
    
    let resturantTitle: String
    let resturantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.resturantTitle = title
        self.resturantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    var subtitle: String?{
        return resturantTitle
    }
}
