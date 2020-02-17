//
//  Firebase.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import Foundation
import Firebase

protocol DatabaseRepresentation {
  var representation: [String: Any] { get }
}

struct Constants
{
    struct refs
    {
        static let ferryRef = Database.database().reference(withPath: "Ferry")
        static let ferryTripRef = ferryRef.child("FerryTrip")
    }
}


struct Ferry {
    
    let id: String
    let registration: String
    
    
}




extension Ferry
{
    
    static func == (lhs: Ferry, rhs: Ferry) -> Bool {
        return lhs.registration == rhs.registration
    }
    
    
}
