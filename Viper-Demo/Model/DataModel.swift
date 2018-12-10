//
//  DataModel.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//  Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import ObjectMapper

class DataModel: Mappable{
    var id: String?
    var name: String?
    var imageUrl: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        imageUrl <- map["imageUrl"]
    }
}
