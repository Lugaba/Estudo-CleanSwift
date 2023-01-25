//
//  SceneWorker.swift
//  studyCleanSwift
//
//  Created by Luca Hummel on 25/01/23.
//

import Foundation

protocol SceneWorkerLogic: AnyObject {
    func doSomething() -> SceneModel.Fetch.Response
}

class SceneWorker: SceneWorkerLogic {
    func doSomething() -> SceneModel.Fetch.Response {
        var response = SceneModel.Fetch.Response(isError: false)
        response.title = "Feijao"
        response.message = "Feijao"
        return response
    }

}
