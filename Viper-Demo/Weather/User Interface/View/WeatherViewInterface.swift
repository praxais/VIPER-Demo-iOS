//
//  WeatherViewInterface.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

protocol WeatherViewInterface: class {
    func showLoading()
    
    func hideLoading()
    
    func populateView(response: ResponseModel)
    
    func showError(error: String)
}
