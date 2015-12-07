//
//  SpotlightSearchManager.swift
//  SpotLightSearch
//
//  Created by Christian Quicano on 12/6/15.
//  Copyright © 2015 iphone4peru. All rights reserved.
//

import Foundation
import UIKit
import CoreSpotlight
import MobileCoreServices

class SpotlightSearchManager {
    
    class func addUserToSearch(identifier:String, user:User){
        
        let atributos = CSSearchableItemAttributeSet(itemContentType: (kUTTypeData as String))
        atributos.title = user.nombre
        atributos.thumbnailData = UIImagePNGRepresentation(UIImage(named: user.nombreFoto)!)
        atributos.phoneNumbers = [user.numeroTelefono]
        atributos.supportsPhoneCall = 1
        
        let item = CSSearchableItem(uniqueIdentifier: identifier, domainIdentifier: "com.iphone4peru", attributeSet: atributos)
        
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems([item], completionHandler: nil)
    }
    
}


struct User {
    var nombre = ""
    var profesion = ""
    var nombreFoto = ""
    var numeroTelefono = ""
}