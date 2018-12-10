//
//  WeatherPresenter.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

class WeatherPresenter {
    weak var view: WeatherViewInterface?
    var interactor: WeatherInteractorInput?
    var wireframe: WeatherWireframeInput?
}

extension WeatherPresenter: WeatherModuleInterface {
    func getDemoApi() {
        view?.showLoading()
        interactor?.getDemoApi()
    }
}

extension WeatherPresenter: WeatherInteractorOutput {
    func populateView(response: ResponseModel) {
        view?.hideLoading()
        view?.populateView(response: response)
    }
    
    func showError(error: String) {
        view?.hideLoading()
        view?.showError(error: error)
    }
}
