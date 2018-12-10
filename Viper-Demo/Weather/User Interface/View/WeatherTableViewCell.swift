//
//  WeatherTableViewCell.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//  Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class WeatherTableViewCell: UITableViewCell {
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var label: UILabel?
    
    var data: DataModel? {
        didSet {
            setup()
        }
    }
    
    private func setup() {
        label?.text = data?.name
        weatherImage?.af_setImage(withURL: URL(string: data?.imageUrl ?? "")!)
    }
}
