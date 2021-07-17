//
//  Landmark.swift
//  Landmarks
//
//  Created by Cameron Porter on 7/17/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var State: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latatude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latatude: Double
        var longitude: Double
    }
}

