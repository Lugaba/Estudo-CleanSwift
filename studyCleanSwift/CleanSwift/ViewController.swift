//
//  ViewController.swift
//  studyCleanSwift
//
//  Created by Luca Hummel on 25/01/23.
//

import UIKit

protocol SceneDisplayLogic: AnyObject {
    func displaySomething(viewModel: SceneModel.Fetch.ViewModel)
}

class ViewController: UIViewController {
    var interactor: (SceneBusinessLogic & SceneDataStore)?
    var router: SceneRoutingLogic?
    var label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.setupView()
    }
    
    private func setupView(){
        let viewController = self
        let interactor = SceneInteractor()
        let presenter = ScenePresenter()
        let worker = SceneWorker()
        viewController.interactor = interactor
        interactor.presenter = presenter
        interactor.worker = worker
        presenter.viewController = viewController
        
        
        self.view.backgroundColor = .yellow
        
        label.text = "Arroz"
        
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        let button = UIButton()
        button.setTitle("Click", for: .normal)
        button.addTarget(self, action: #selector(doSomething), for: .touchUpInside)
        button.backgroundColor = .blue
        
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: label.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 16).isActive = true
    }
    
    @objc
    private func doSomething() {
        let request = SceneModel.Fetch.Request()
        interactor?.doSomething(request: request)
    }
}

extension ViewController: SceneDisplayLogic {
    func displaySomething(viewModel: SceneModel.Fetch.ViewModel) {
        self.label.text = viewModel.message
    }
}

