//
//  ViewController.swift
//  EjemploClosure
//
//  Created by Christian Quicano on 9/26/15.
//  Copyright © 2015 iphone4peru.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Util.downloadImage("http://iphone4peru.com/view/img/logo.png",
            success:{
                [unowned self] (image) -> () in
                self.logo.image = image
        })
    }

}

