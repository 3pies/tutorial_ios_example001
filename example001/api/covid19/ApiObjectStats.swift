//
//  ApiObjectStats.swift
//  example001
//
//  Created by Daniel Ferrer on 23/07/2020.
//  Copyright © 2020 3pies. All rights reserved.
//

import Foundation

struct ApiObjectStats : Codable {
    
    var total: Int
    var all: Int               
    var allUpdated: String
    var countries: Int
    
    enum CodingKeys: String, CodingKey {
        case total = "Total", all = "All",
            allUpdated = "AllUpdated", countries = "Countries"
    }
    
}

/*
 Ejemplo de respuesta
 {
     "Total": 151466437,
     "All": 270150,
     "AllUpdated": "2020-04-13 05:54:20 +0000 UTC",
     "Countries": 8873488,
     "CountriesUpdated": "2020-04-13 05:54:20 +0000 UTC",
     "ByCountry": 2111920,
     "ByCountryUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "ByCountryLive": 8117149,
     "ByCountryLiveUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "ByCountryTotal": 8255271,
     "ByCountryTotalUpdated": "2020-04-13 05:54:20 +0000 UTC",
     "DayOne": 2989797,
     "DayOneUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "DayOneLive": 1905275,
     "DayOneLiveUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "DayOneTotal": 7699937,
     "DayOneTotalUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "LiveCountryStatus": 8817068,
     "LiveCountryStatusUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "LiveCountryStatusAfterDate": 8217224,
     "LiveCountryStatusAfterDateUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "Stats": 541794,
     "StatsUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "Default": 378586,
     "DefaultUpdated": "2020-04-13 05:54:21 +0000 UTC",
     "SubmitWebhook": 8970,
     "SubmitWebhookUpdated": "2020-04-13 05:54:20 +0000 UTC",
     "Summary": 93279808,
     "SummaryUpdated": "2020-04-13 05:54:20 +0000 UTC"
 }
 
 */
