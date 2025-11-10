//
//  FamousePlace.swift
//  CustomCellTable
//
//  Created by Warintira Pureprasert on 3/11/2568 BE.
//

import MapKit
import UIKit

class FamousPlaces: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
            self.title = title
            self.coordinate = coordinate
            self.info = info
        } //method 
    
    
}
