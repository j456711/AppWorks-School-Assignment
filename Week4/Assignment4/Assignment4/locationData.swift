//
//  locationData.swift
//  Assignment4
//
//  Created by 渡邊君 on 2019/2/2.
//  Copyright © 2019 Jill Yeh. All rights reserved.
//

import Foundation

class LocationData {
    
    let jsonUrl = URL(string: "https://stations-98a59.firebaseio.com/practice.json")
    let decoder = JSONDecoder()
    let session: URLSession
    
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    typealias LocationCompletionHandler = (CurrentLocation?, Error?) -> Void
    
    func getLocation(completionHandler completion: @escaping LocationCompletionHandler) {
        
        guard let url = jsonUrl else {
            completion(nil, LocationError.invalidUrl)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, LocationError.requestFailed)
                        return }
                    
                    if httpResponse.statusCode == 200 {
                        do {
                            let currentLocation = try self.decoder.decode(CurrentLocation.self, from: data)
                            completion(currentLocation, nil)
                        }
                        catch {
                            completion(nil, error)
                        }
                    }
                    else {
                        completion(nil, LocationError.invalidData)
                    }
                }
                else if let error = error {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    }
}
