//
//  MyHero.swift
//  FireTrack
//
//  Created by Steven on 5/27/18.
//  Copyright © 2018 Steven. All rights reserved.
//

import MapKit

class MyHero: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, subtitle:String?, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
