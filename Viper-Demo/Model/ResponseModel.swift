//
//  ResponseModel.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//  Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import ObjectMapper

class ResponseModel: Mappable {
    var data: [DataModel]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        data <- map["data"]
    }
}
