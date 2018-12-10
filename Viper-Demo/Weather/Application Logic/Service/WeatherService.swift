//
//  WeatherService.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import RxSwift
import Alamofire
import AlamofireObjectMapper

class WeatherService: WeatherServiceType {
    func getDemoApi() -> Single<ResponseModel>  {
            return Single.create { emitter in
                Alamofire.request(ApiConstants.baseUrl + ApiConstants.demoApi, method: .get)
                    .responseObject { (response: DataResponse<ResponseModel>) in
                        switch response.result {
                        case .success:
                            emitter(.success(response.result.value!))
                            break
                        case .failure:
                            emitter(.error(NSError(domain: response.result.debugDescription, code: 1, userInfo: nil)))
                            break
                        }
                }
                return Disposables.create()
            }
        }
}
