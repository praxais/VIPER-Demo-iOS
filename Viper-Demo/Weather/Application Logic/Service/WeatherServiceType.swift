//
//  WeatherServiceType.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import RxSwift

protocol WeatherServiceType: class {
    func getDemoApi() -> Single<ResponseModel>
}
