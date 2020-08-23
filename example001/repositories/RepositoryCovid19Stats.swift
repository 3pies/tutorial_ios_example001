//
//  RepositoryCovid19Stats.swift
//  example001
//
//  Created by Daniel Ferrer on 23/07/2020.
//  Copyright © 2020 3pies. All rights reserved.
//

import Foundation

class RepositoryCovid19Stats {
    
    let apiRest = ApiRestServices(urlServer: "https://api.covid19api.com/")
    
    init() {
        apiRest.getStats { (apiObject) in
            print(apiObject)
        }
        apiRest.getCountries { (apiObject) in
            print(apiObject)
        }
    }
}
