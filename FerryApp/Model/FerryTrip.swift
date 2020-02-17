//
//  FerryTrip.swift
//  FerryApp
//
//  Created by Arun Kumar on 15/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import Foundation
import Firebase

struct FerryTrip {
    let ref: DatabaseReference?
    let startPoint: String
    let endPoint: String
    let coordinate: String
    let startTime: String
    
    init(startPoint: String,
         endPoint: String,
         latitude: Double,
         longitude: Double,
         startTime: String ) {
        self.ref = nil
      self.startPoint = startPoint
      self.endPoint = endPoint
      self.coordinate = "\(latitude),\(longitude)"
      self.startTime = startTime
    }
    
    init?(snapshot: DataSnapshot)
    {
        guard
          let value = snapshot.value as? [String: Any],
          let startPoint = value["startPoint"] as? String,
          let endPoint = value["endPoint"] as? String,
          let coordinate = value["coordinate"] as? String,
          let startTime = value["startTime"] as? String
        else {
          return nil
        }
        self.ref = snapshot.ref
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.coordinate = coordinate
        self.startTime = startTime
    }
    
}

extension FerryTrip: DatabaseRepresentation
{
    var representation: [String : Any] {
        return ["startPoint": self.startPoint,
                "endPoint": self.endPoint,
                "coordinate": self.coordinate,
                "startTime": self.startTime]
    }
}
