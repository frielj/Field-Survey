//
//  FieldObservationJSONLoader.swift
//  Field Survey
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import Foundation

class FieldObservationsJSONLoader {
    
    class func load(fileName: String) -> [Observation]{
        
        var observations = [Observation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldObservationsJSONParser.parse(data)
        }
        
        return observations
    }
}
