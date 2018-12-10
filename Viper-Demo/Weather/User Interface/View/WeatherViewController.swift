//
//  WeatherViewController.swift
//  Viper-Demo
//
//  Created by Prajwal Maharjan on 12/10/18.
//Copyright © 2018 Prajwal Maharjan. All rights reserved.
//

import UIKit
import PKHUD

class WeatherViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView?
    var presenter: WeatherModuleInterface?
    private var demoList: [DataModel]? {
        didSet {
            self.tableView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup() {
        //setup tableView
        tableView?.delegate = self
        tableView?.dataSource = self
        //demo api call
        presenter?.getDemoApi()
    }
}

extension WeatherViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherTableViewCell
        cell.data = demoList?[indexPath.row]
        return cell
    }
}

extension WeatherViewController: WeatherViewInterface {
    func showLoading() {
        HUD.show(.systemActivity, onView: self.view)
    }
    
    func hideLoading() {
        if HUD.isVisible {
            HUD.hide()
        }
    }
    
    func populateView(response: ResponseModel) {
        demoList = response.data
    }
    
    func showError(error: String) {
        print("Error: \(error)")
    }
}
