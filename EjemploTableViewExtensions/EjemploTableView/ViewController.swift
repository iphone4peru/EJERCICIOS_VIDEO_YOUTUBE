//
//  ViewController.swift
//  EjemploTableView
//
//  Created by Christian Quicano on 9/6/15.
//  Copyright (c) 2015 iphone4peru.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    let items = [["title":"IPHONE4PERU", "rutaImagen":"http://www.iphone4peru.com/view/images/logo.png"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        let imagen = cell.viewWithTag(1) as! UIImageView
        let titulo = cell.viewWithTag(2) as! UILabel
        
        titulo.text = items[indexPath.row]["title"]
        imagen.imageFromUrl(items[indexPath.row]["rutaImagen"]!, completed: {
            println("termino la descarga")
        })
        
        return cell
    }
    
}


extension UIImageView {
    public func imageFromUrl(urlS: String, completed:()->()) {
        if let url = NSURL(string: urlS) {
            NSOperationQueue().addOperationWithBlock{
                [unowned self] ()->() in
                if let data = NSData(contentsOfURL: url) {
                    if let image = UIImage(data: data){
                        NSOperationQueue.mainQueue().addOperationWithBlock({
                            self.image = image
                            completed()
                        })
                    }
                }
            }
        }
    }
}







