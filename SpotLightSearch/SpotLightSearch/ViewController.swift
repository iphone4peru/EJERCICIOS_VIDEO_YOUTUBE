//
//  ViewController.swift
//  SpotLightSearch
//
//  Created by Christian Quicano on 12/6/15.
//  Copyright © 2015 iphone4peru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func agregarUsuarioBusqueda(sender: AnyObject) {
        
        let usuario = User(nombre:"Christian Quicano", profesion: "Ingeniero", nombreFoto: "chris", numeroTelefono: "987654321")
        SpotlightSearchManager.addUserToSearch("cquicanoz", user: usuario)
        
    }
}

