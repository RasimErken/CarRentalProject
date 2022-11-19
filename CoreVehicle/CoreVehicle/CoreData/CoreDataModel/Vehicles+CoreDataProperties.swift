//
//  Vehicles+CoreDataProperties.swift
//  CoreVehicle
//
//  Created by rasim rifat erken on 25.09.2022.
//
//

import Foundation
import CoreData


extension Vehicles {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Vehicles> {
        return NSFetchRequest<Vehicles>(entityName: "Vehicles")
    }

    @NSManaged public var name: String?
    @NSManaged public var url: String?

}

extension Vehicles : Identifiable {

}
