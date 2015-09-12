//
//  ViewController.swift
//  TemplateCoreData
//
//  Created by Christian Quicano on 9/12/15.
//  Copyright (c) 2015 iphone4peru.com. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        
        //crear una entidad con coredata
        let entity = NSEntityDescription.entityForName("Store", inManagedObjectContext: managedContext)
        let store1 = Store(entity: entity!, insertIntoManagedObjectContext: managedContext)
        store1.latitud = -12.4565
        store1.longitud = -17.2344
        store1.direccion = "Av. Arequipa 2450, oficina 303 - Lince - Perú"
//        store1.productos
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

