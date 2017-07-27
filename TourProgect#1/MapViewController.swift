//
//  MapViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import XLPagerTabStrip
import GoogleMaps

class MapViewController: UIViewController, IndicatorInfoProvider {
    
   
    @IBOutlet weak var MyMapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let camera = GMSCameraPosition.camera(withLatitude: 46.467694, longitude: 30.705600, zoom: 10)
        MyMapView.camera = camera

        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2DMake(46.467694, 30.705600)
        marker1.title = "first"
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2DMake(46.47, 30.8)
        marker2.title = "second"
        
        let markers: [GMSMarker] = [marker1, marker2]
        addMarker(markers: markers)
    }
    
    func addMarker (markers: [GMSMarker]) {
        for marker in markers {
            marker.map = self.MyMapView
        }
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Карта")
    }
    
    
}
