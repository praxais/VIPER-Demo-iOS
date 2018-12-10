//
//  ViewController.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//  Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = WeatherWireframe().getMainView() as! WeatherViewController
        self.present(vc, animated: true, completion: nil)
    }
}

