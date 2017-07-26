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
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        GMSServices.provideAPIKey("AIzaSyDI_ru8PsfByOfydUyomBieJfEVBIIiwQs")
        
        let camera = GMSCameraPosition.camera(withLatitude: 46.467694, longitude: 30.705600, zoom: 10)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        

        
        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Карта")
    }
    
    
}
