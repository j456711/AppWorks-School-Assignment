//
//  ViewController.swift
//  Assignment4
//
//  Created by 渡邊君 on 2019/2/1.
//  Copyright © 2019 Jill Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let locationData = LocationData()
        
        locationData.getLocation { currentLocation, error in
            if let currentLocation = currentLocation {
                let viewModel = CurrentLocationViewModel(model: currentLocation)
                self.displayData(using: viewModel)
            }
        }
    }
    
    func displayData(using viewModel: CurrentLocationViewModel) {
        stationIDLabel.text = viewModel.stationID
        stationNameLabel.text = viewModel.stationName
        stationAddressLabel.text = viewModel.stationAddress
    }
    
}
