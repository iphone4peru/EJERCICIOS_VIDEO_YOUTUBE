//
//  ViewController.swift
//  TryCatchSwiftDos
//
//  Created by Christian Quicano on 9/19/15.
//  Copyright © 2015 iphone4peru.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TryCatchSwift2()
    }
    
    
    
    
    
    //explicación del uso del Try Catch en Swift 2.0
    
    func TryCatchSwift2 () {
        do{
            let numero = try multiplicarPorDos(123)
            print(numero)
        }catch Error.errorUsuario(let mensaje){
            print(mensaje)
        }catch Error.errorNetwork{
            
        }catch{
            
        }
    }
    
    enum Error:ErrorType{
        case errorUsuario(mensaje:String)
        case errorNetwork
    }
    
    func multiplicarPorDos(n:Int) throws -> Int {
        
        if n == 123{
            throw Error.errorUsuario(mensaje: "usuario no válido")
        }
        return n * 2
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}

