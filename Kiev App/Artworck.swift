//
//  Artworck.swift
//  Kiev App
//
//  Created by kacio henrique couto batista on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import MapKit
public class Artwork: NSObject , MKAnnotation{
    let title: String?
    public let coordinate:CLLocationCoordinate2D
    init(title:String , coordinate:CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
        super.init()
    }
}
