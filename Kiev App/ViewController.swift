//
//  ViewController.swift
//  Kiev App
//
//  Created by kacio henrique couto batista on 19/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    var setMapForView :MKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setMapForView = self.mapForView()
        setMapForView?.region.center = CLLocationCoordinate2D(latitude: 12.4796055, longitude: 41.8946273)
        centerMapOnLocation(location:CLLocation(latitude: 12.4921738, longitude: 41.869954))
       //setMapForView?.addAnnotation(Artwork(title: "casa de aiton", coordinate: CLLocationCoordinate2D(latitude: -34.1830700, longitude: 22.1460600)))
        pleaseWork()
    }
    func centerMapOnLocation(location: CLLocation) {
        let regionRadius: CLLocationDistance = 1000000
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
       setMapForView?.setRegion(coordinateRegion, animated:true)
    }
    
    
    func mapForView() -> MKMapView{
        let viewMap = MKMapView()
        self.view = viewMap
        return viewMap
    }
    func pleaseWork()//->NSDictionary
    {
        let urlBar = Bundle.main.url(forResource: "export", withExtension: "geojson")!
        
        do {
            let jsonData = try Data(contentsOf: urlBar)
            let result = try JSONDecoder().decode(Collection.self, from: jsonData)
            for feature in result.features {
                setMapForView?.addAnnotation(Artwork(title: "casa de aiton", coordinate: CLLocationCoordinate2D(latitude: feature.geometry.coordinates[0], longitude:feature.geometry.coordinates[1] )))
                print("lat ", feature.geometry.coordinates)
            }
        } catch { print("Error while parsing: \(error)") }
        //return NSDictionary()
    }
}

