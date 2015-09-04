//
//  ViewController.swift
//  UIAlertView
//
//  Created by Christian Quicano on 11/1/14.
//  Copyright (c) 2014 iphone4peru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    
    @IBOutlet var cajaNombre: UITextField!
    
    @IBAction func validarNombre(sender: AnyObject) {
        if(cajaNombre.text.isEmpty){
            let alerta = UIAlertView(title: "ALERTA", message: "DEBE INGRESAR UN NOMBRE", delegate: nil, cancelButtonTitle: "ACEPTAR")
            alerta.show()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

