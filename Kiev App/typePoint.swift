//
//  typePoint.swift
//  Kiev App
//
//  Created by kacio henrique couto batista on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import MapKit
struct Collection : Decodable {
    let type : String
    let features : [Feature]
}

struct Feature : Decodable {
    let type : String
    //let properties : Properties
    let geometry: Geometry
    // there is also geometry
}

struct Properties : Decodable {
   
}
struct Geometry : Decodable {
    let type:String
    let coordinates:[Double]
}

