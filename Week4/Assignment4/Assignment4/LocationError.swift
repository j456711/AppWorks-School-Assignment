//
//  LocationError.swift
//  Assignment4
//
//  Created by 渡邊君 on 2019/2/2.
//  Copyright © 2019 Jill Yeh. All rights reserved.
//

import Foundation

enum LocationError: Error {
    case invalidUrl
    case invalidData
    case requestFailed
}
