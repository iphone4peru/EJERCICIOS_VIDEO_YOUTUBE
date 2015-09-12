//
//  Store.swift
//  TemplateCoreData
//
//  Created by Christian Quicano on 9/12/15.
//  Copyright (c) 2015 iphone4peru.com. All rights reserved.
//

import Foundation
import CoreData

class Store: NSManagedObject {

    @NSManaged var direccion: String
    @NSManaged var telefono: NSNumber
    @NSManaged var latitud: NSNumber
    @NSManaged var longitud: NSNumber
    @NSManaged var productos: NSSet

}
