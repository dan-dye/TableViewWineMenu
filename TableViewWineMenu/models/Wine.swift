//
//  Wine.swift
//  TableViewWineMenu
//
//  Created by Daniel Dye on 3/2/25.
//

import Foundation

//Wine model with name, year, region, type elements as well as price per glass and per bottle.
struct Wine {
    init(name: String, year: String, type: String, region: String, pricePerGlass: Int, pricePerBottle: Int) {
        self.name = name
        self.year = year
        self.type = type
        self.region = region
        self.pricePerGlass = pricePerGlass
        self.pricePerBottle = pricePerBottle
    }
    
    var name: String
    var year: String
    var type: String
    var region: String
    var pricePerGlass: Int
    var pricePerBottle: Int
    
    func getName() -> String {
        return name
    }
    
    func getType() -> String {
        return type
    }
    
    func getYear() -> String {
        return year
    }
    
    func getRegion() -> String {
        return region
    }
    
    func getGlassPrice() -> Int {
        return pricePerGlass
    }
    
    func getBottlePrice() -> Int {
        return pricePerBottle
    }

}
