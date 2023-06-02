//
//  Market.swift
//  appleTelefonMarket
//
//  Created by Reza Dysta SATRIA on 1.06.2023.
//

import CoreData


@objc(Telefon)
class Telefon: NSManagedObject {
    
    @NSManaged var id: NSNumber!
    @NSManaged var name: String!
    @NSManaged var price: String!
    @NSManaged var color: String!
    
}
