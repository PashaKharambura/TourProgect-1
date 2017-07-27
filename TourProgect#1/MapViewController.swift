//
//  MapViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import XLPagerTabStrip
import GoogleMaps

struct Place {
    let name: String
    let long: CLLocationDegrees
    let lat: CLLocationDegrees
}


let Places = [
    Place(name: "Odessa", long: 30.705600, lat: 46.467694),
    Place(name: "Shoto", long: 30.705691, lat: 46.467041),
    Place(name: "Gdeto", long: 30.705800, lat: 46.467041),
    
]

var markerDict: [String: GMSMarker] = [:]

class MapViewController: UIViewController, IndicatorInfoProvider {
    
    @IBOutlet weak var MyMapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let PinchGesture = UIPinchGestureRecognizer(target: self, action: "PinchGesture")
        self.MyMapView.addGestureRecognizer(PinchGesture)
        
        
        let camera = GMSCameraPosition.camera(withLatitude: 46.467694, longitude: 30.705600, zoom: 10)
        MyMapView.camera = camera
        
        for Place in Places {
            let Place_marker = GMSMarker()
            Place_marker.position = CLLocationCoordinate2D(latitude: Place.lat, longitude: Place.long)
            Place_marker.title = Place.name
            Place_marker.map = MyMapView
            markerDict[Place.name] = Place_marker
        }
        

        
        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Карта")
    }
    
    func PinchGesture(sender: UIPinchGestureRecognizer) {
        sender.view!.transform = sender.view!.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
    }
    
    
}
/*

 class MapViewController: UIViewController, IndicatorInfoProvider {
 
 
 
 let PinchGesture = UIPinchGestureRecognizer(target: self, action: "PinchGesture")
 self.MyMapView.addGestureRecognizer(PinchGesture)
 
 
 let camera = GMSCameraPosition.camera(withLatitude: 46.467694, longitude: 30.705600, zoom: 10)
 MyMapView.camera = camera
 
 for Place in Places {
 let Place_marker = GMSMarker()
 Place_marker.position = CLLocationCoordinate2D(latitude: Place.lat, longitude: Place.long)
 Place_marker.title = Place.name
 Place_marker.map = MyMapView
 markerDict[Place.name] = Place_marker
 }
 
 
 
 
 
 // Do any additional setup after loading the view.
 }
 
 func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
 return IndicatorInfo(title: "Карта")
 }
 
 func PinchGesture(sender: UIPinchGestureRecognizer) {
 sender.view!.transform = sender.view!.transform.scaledBy(x: sender.scale, y: sender.scale)
 sender.scale = 1
 }
 
 }

 
 */
