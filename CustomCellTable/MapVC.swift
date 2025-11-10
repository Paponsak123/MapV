//
//  MapVC.swift
//  CustomCellTable
//
//  Created by Warintira Pureprasert on 3/11/2568 BE.
//

import UIKit
import MapKit

class MapVC: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {

    var position:Int = 0
    
    let latCo:[Double] = [51.501476,48.858093,36.056595,51.483334,40.748817]
    let longCo:[Double] = [-0.140634,2.294694,-112.125092,-0.604167,-73.985428]
    let attractionNames = ["Buckingham Palace",
                           "The Eiffel Tower",
                           "Empire State Building",
                           "The Grand Canyon",
                           "Windsor Castle"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("position click",position
        )
        // Do any additional setup after loading the view.
        
        let place1 = FamousPlaces(title: attractionNames[position], coordinate: CLLocationCoordinate2D(latitude: latCo[position], longitude: longCo[position]), info: "Famous Places: \(attractionNames[position])")
        
        let place2 = FamousPlaces(title: "White house", coordinate: CLLocationCoordinate2D(latitude: 32.2268212, longitude: -95.2255041), info: "Famous Places: White house")
        
        let place3 = FamousPlaces(title: "Washington Monument", coordinate: CLLocationCoordinate2D(latitude: 38.889484, longitude: -77.035278), info: "Famous Places: Washington Monument")
        
        mapPlace.addAnnotation(place1)
        mapPlace.addAnnotation(place2)
        mapPlace.addAnnotation(place3)
        
        // pan camera map to destination
        let destinationCoordinate = CLLocationCoordinate2D(latitude: latCo[position], longitude: longCo[position])
            lbPlace.text=attractionNames[position]
                
        let region = MKCoordinateRegion(center: destinationCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))

        // Set the map view's region property to the MKCoordinateRegion object.
            mapPlace.region = region
                
        // Set the map view's delegate
            mapPlace.delegate = self
    }
    
    @IBOutlet weak var lbPlace: UILabel!
    @IBOutlet weak var mapPlace: MKMapView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
