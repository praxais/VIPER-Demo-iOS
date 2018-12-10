//
//  WeatherInteractor.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import RxSwift

class WeatherInteractor {
    weak var output: WeatherInteractorOutput?
    private let service: WeatherServiceType
    fileprivate let disposable = DisposeBag()
    
    init(service: WeatherServiceType) {
        self.service = service
    }
}

extension WeatherInteractor: WeatherInteractorInput {
    func getDemoApi() {
        service.getDemoApi()
            .observeOn(MainScheduler.instance)
            .subscribeOn(ConcurrentDispatchQueueScheduler(qos: .background))
            .subscribe({ e in
                switch e {
                case .success(let response):
                    self.output?.populateView(response: response)
                    break
                case .error(let error):
                    self.output?.showError(error: error.localizedDescription)
                    break
                }
            }).disposed(by: self.disposable)
    }
}
