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

var currentZoom: Float = 10

class MapViewController: UIViewController, IndicatorInfoProvider {
    
    @IBOutlet weak var MyMapView: GMSMapView!
    
   
    @IBAction func zoomPlus(_ sender: Any) {
        
        currentZoom = currentZoom + 1
        
        self.MyMapView.animate(toZoom: currentZoom)
        
    }
        
    
    @IBAction func zoomMinus(_ sender: Any) {
    
        currentZoom = currentZoom - 1
        
        self.MyMapView.animate(toZoom: currentZoom)
    
    }
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let PinchGesture = UIPinchGestureRecognizer(target: self, action: Selector(("PinchGesture")))//пінч ту зум
        self.MyMapView.addGestureRecognizer(PinchGesture)
        
        
        let camera = GMSCameraPosition.camera(withLatitude: 46.467694, longitude: 30.705600, zoom: currentZoom)
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
