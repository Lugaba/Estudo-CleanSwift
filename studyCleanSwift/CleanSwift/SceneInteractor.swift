//
//  SceneInteractor.swift
//  studyCleanSwift
//
//  Created by Luca Hummel on 25/01/23.
//

import Foundation

protocol SceneBusinessLogic: AnyObject {
    func doSomething(request: SceneModel.Fetch.Request)
}

protocol SceneDataStore {
    var someStringToStoreOrPass: String { get set }
}

class SceneInteractor: SceneDataStore {
    var presenter: ScenePresentationLogic?
    var worker: SceneWorkerLogic?
    
    var someStringToStoreOrPass: String = ""

}

extension SceneInteractor: SceneBusinessLogic {
    func doSomething(request: SceneModel.Fetch.Request) {
        let response = worker?.doSomething()
        if let response = response {
            presenter?.presentSomething(response: response)
        }
    }
    
    
}
