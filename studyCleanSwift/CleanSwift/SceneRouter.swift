//
//  SceneRouter.swift
//  studyCleanSwift
//
//  Created by Luca Hummel on 25/01/23.
//

import Foundation

protocol SceneRoutingLogic {
    func routeToSomewhere()
}

protocol SceneDataPassing {
    var dataStore: SceneDataStore? { get }
}

class SceneRouter: NSObject, SceneRoutingLogic, SceneDataPassing {
    func routeToSomewhere() {
        print("trade")
    }
    
    weak var source: ViewController?
    var dataStore: SceneDataStore?
    
    
}
