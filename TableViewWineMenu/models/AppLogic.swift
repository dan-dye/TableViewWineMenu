//
//  AppLogic.swift
//  TableViewWineMenu
//
//  Created by Daniel Dye on 3/2/25.
//

import Foundation

class AppLogic {
    //Menu list
    var wineList = [
        Wine(name: "Nicolas Feuillatte", year: "--", type: "Champagne", region: "France", pricePerGlass: 25, pricePerBottle: 95),
        Wine(name: "Flowers", year: "2021", type: "Chardonnay", region: "Sonoma Coast", pricePerGlass: 20, pricePerBottle: 80),
        Wine(name: "Scarpetta", year: "2021", type: "Pinot Grigio", region: "Italy", pricePerGlass: 11, pricePerBottle: 40),
        Wine(name: "Richter Estate", year: "2021", type: "Riesling", region: "Mosel", pricePerGlass: 16, pricePerBottle: 60),
        Wine(name: "Yealands", year: "2022", type: "Sauvignon Blanc", region: "New Zealand", pricePerGlass: 13, pricePerBottle: 50),
        Wine(name: "Daou", year: "2021", type: "Cabernet", region: "Paso Robles", pricePerGlass: 20, pricePerBottle: 80),
        Wine(name: "Faust", year: "2020", type: "Cabernet", region: "Napa Valley", pricePerGlass: 35, pricePerBottle: 135),
        Wine(name: "Zuccardi 'Serie A'", year: "2021", type: "Malbec", region: "Mendoza", pricePerGlass: 13, pricePerBottle: 50),
        Wine(name: "Emmolo", year: "2020", type: "Merlot", region: "Napa Valley", pricePerGlass: 20, pricePerBottle: 80),
        Wine(name: "Stoller Family Estates", year: "2021", type: "Pinot Noir", region: "Orgeon", pricePerGlass: 17, pricePerBottle: 65)
    ]
    
    //Returns single wine from list at a given index
    func getWine(_ index: Int) -> Wine {
        return wineList[index]
    }
}
