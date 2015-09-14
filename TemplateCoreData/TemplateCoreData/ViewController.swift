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
        let managedObjectContext = appDelegate.managedObjectContext!
        
//        let store1 = NSEntityDescription.insertNewObjectForEntityForName("Store", inManagedObjectContext: managedObjectContext) as! Store
//        store1.latitud = NSNumber(float: -12.4565)
//        store1.longitud = NSNumber(float: -17.4465)
//        store1.direccion = "Av. Arequipa 2450, oficina 303 - Lince - Perú"
//        
//        managedObjectContext.delete(store1)
//        managedObjectContext.save(nil)
        
        let request = NSFetchRequest(entityName: "Store")
        let arrayStores = managedObjectContext.executeFetchRequest(request, error: nil) as! [Store]
        
        if let store = arrayStores.first {
            managedObjectContext.deleteObject(store)
            managedObjectContext.save(nil)
        }
        
        println("total: \(arrayStores.count)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

