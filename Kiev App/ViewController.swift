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
        setMapForView?.region.center = CLLocationCoordinate2D(latitude: 22.1583525, longitude: -34.1857742)
        centerMapOnLocation(location:CLLocation(latitude: 22.1583525, longitude: 22.1583525))
       //setMapForView?.addAnnotation(Artwork(title: "casa de aiton", coordinate: CLLocationCoordinate2D(latitude: -34.1830700, longitude: 22.1460600)))
        let localHotel = pleaseWork(name:"geojson/hotel.export")
       // let restaurant = pleaseWork(name:"geojson/restaurant.export")
       // let tourism = pleaseWork(name:"geojson/tourism.export")
        //addInmap(local::localHotel)
        //addInmap(point:restaurant)
        //addInmap(point:tourism)

    }
    func addInmap(local:Artwork){
            let point = MKPointAnnotation()
            point.title = local.title
            point.coordinate = local.coordinate
            setMapForView?.addAnnotation(point)
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
    func pleaseWork(name:String)//->NSDictionary
    ->[Artwork]{
        let urlBar = Bundle.main.url(forResource: name, withExtension: "geojson")!
        
        do {
            let jsonData = try Data(contentsOf: urlBar)
            var retorno:[Artwork] = []
            var result = try JSONDecoder().decode(Collection.self, from: jsonData)
            for feature in result.features {
               // print(feature.properties.name)
                addInmap(local: Artwork(title:feature.properties.name, coordinate: CLLocationCoordinate2D(latitude: feature.geometry.coordinates[1], longitude: feature.geometry.coordinates[0])))
                print(feature.geometry.coordinates[0])
                print(feature.geometry.coordinates[1])

            }
            return retorno
        } catch { print("Error while parsing: \(error)") }
        //return NSDictionary()
        return [Artwork]()
    }
}

