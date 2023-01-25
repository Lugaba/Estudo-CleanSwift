//
//  ScenePresenter.swift
//  studyCleanSwift
//
//  Created by Luca Hummel on 25/01/23.
//

import Foundation

protocol ScenePresentationLogic: AnyObject {
    func presentSomething(response: SceneModel.Fetch.Response)
}

class ScenePresenter {
    weak var viewController: SceneDisplayLogic?
}

extension ScenePresenter: ScenePresentationLogic {
    func presentSomething(response: SceneModel.Fetch.Response) {
        var viewModel = SceneModel.Fetch.ViewModel(isError: response.isError)
        viewModel.message = response.message
        viewModel.name = response.title
        viewController?.displaySomething(viewModel: viewModel)
    }
}
