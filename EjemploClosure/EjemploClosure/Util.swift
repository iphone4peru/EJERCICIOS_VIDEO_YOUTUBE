//
//  Util.swift
//  EjemploClosure
//
//  Created by Christian Quicano on 9/26/15.
//  Copyright © 2015 iphone4peru.com. All rights reserved.
//

import UIKit

class Util {
    
    class func downloadImage(urlS:String, success:(image:UIImage)->()){
        NSOperationQueue().addOperationWithBlock{
            if let url = NSURL(string: urlS){
                if let data = NSData(contentsOfURL: url){
                    if let image = UIImage(data: data){
                        NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                            //retornar la imagen
                            success(image: image)
                        })
                    }
                }
            }
        }
    }
    
}
