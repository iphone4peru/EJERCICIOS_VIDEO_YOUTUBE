//
//  Producto.swift
//  TemplateCoreData
//
//  Created by Christian Quicano on 9/12/15.
//  Copyright (c) 2015 iphone4peru.com. All rights reserved.
//

import Foundation
import CoreData

class Producto: NSManagedObject {

    @NSManaged var productoId: NSNumber
    @NSManaged var precio: NSNumber
    @NSManaged var nombre: String
    @NSManaged var descripcion: String
    @NSManaged var store: Store

}
