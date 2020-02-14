//
//  File.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import Foundation


let buildings = BuildingInfo.load()

struct BuildingInfo {
    
    private static var info = [["name": "Building 13" , "latitude": 28.491117, "longitude": 77.074601],
                               ["name": "Building 17" , "latitude": 28.491333, "longitude": 77.077022],
                               ["name": "Building 14" , "latitude": 28.496897, "longitude": 77.081060],
                               ["name": "Building 28" , "latitude": 28.489707, "longitude": 77.060606],
                               ["name": "Building 36 & 37" , "latitude": 28.501258, "longitude": 77.070039],
                               ["name": "Bulding 371" , "latitude": 28.503248, "longitude": 77.070957]]
    
    static func load() -> [Building]
    {
        return info.map{Building($0)}
    }
}

struct Building {
    let name: String
    let latitude: Double
    let longitude: Double
    
    init(_ info: [String: Any]) {
        self.name = info["name"] as? String ?? ""
        self.latitude = info["latitude"] as? Double ?? 0.0
        self.longitude = info["longitude"] as? Double ?? 0.0
    }
}
