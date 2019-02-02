//
//  currentLocationViewModel.swift
//  Assignment4
//
//  Created by 渡邊君 on 2019/2/2.
//  Copyright © 2019 Jill Yeh. All rights reserved.
//

import Foundation

struct CurrentLocationViewModel {
    let stationID: String
    let stationName: String
    let stationAddress: String
    
    init(model: CurrentLocation) {
        self.stationID = model.stationID
        self.stationName = model.stationName
        self.stationAddress = model.stationAddress
    }
}

//使用view model來針對擷取下來的資料去做特定處理，讓view controller單純去展示處理過的資料即可，不要讓同一個object包含太多複雜的資料。
