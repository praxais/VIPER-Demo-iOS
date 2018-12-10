//
//  WeatherWireframe.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import UIKit

class WeatherWireframe {
     weak var view: UIViewController?
}

extension WeatherWireframe: WeatherWireframeInput {
    var storyboardName: String {return "Weather"}
    
    func getMainView() -> UIViewController {
        let service = WeatherService()
        let interactor = WeatherInteractor(service: service)
        let presenter = WeatherPresenter()
        let viewController = viewControllerFromStoryboard(of: WeatherViewController.self)
        
        viewController.presenter = presenter
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
}
