//
//  ApiObjectCountry.swift
//  example001
//
//  Created by Daniel Ferrer on 23/07/2020.
//  Copyright © 2020 3pies. All rights reserved.
//

import Foundation

struct ApiObjectCountry: Codable {
    
    var country: String
    var slug: String
    var iso: String
    
    enum CodingKeys: String, CodingKey {
        case country = "Country", slug = "Slug", iso = "ISO2"
    }
}
