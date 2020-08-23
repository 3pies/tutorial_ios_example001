//
//  ApiRestServices.swift
//  example001
//
//  Created by Daniel Ferrer on 23/07/2020.
//  Copyright © 2020 3pies. All rights reserved.
//

import Foundation
import Alamofire

class ApiRestServices {
    
    private var urlServer: String
    private var manager: Session
    
    init(urlServer: String) {
        self.urlServer = urlServer
        
        let configuration: URLSessionConfiguration = {
            let config = URLSessionConfiguration.default
            
            return config
        }()
        
        self.manager = Session(configuration: configuration)
    }
    
    func getStats(completionHandler: @escaping(ApiObjectStats?) -> Void) {
        let urlService = "stats"
        request(urlService: urlService, completionHandler: completionHandler)
    }
    
    func getCountries(completionHandler: @escaping([ApiObjectCountry]?) -> Void) {
        let urlService = "countries"
        request(urlService: urlService, completionHandler: completionHandler)
    }
    
    private func request<T:Codable>(urlService: String, completionHandler: @escaping(T?) -> Void) {
        manager.request("\(self.urlServer)\(urlService)").validate().responseDecodable(of: T.self) { response in
            guard let data = response.value else { return }
            completionHandler(data)
        }
    }
    
}
