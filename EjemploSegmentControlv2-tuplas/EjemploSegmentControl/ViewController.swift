//
//  ViewController.swift
//  EjemploSegmentControl
//
//  Created by Fredy Asencios on 10/31/15.
//  Copyright © 2015 Fredy Asencios R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var miSegment: UISegmentedControl!

    @IBOutlet weak var contenedorImg: UIImageView!
    
    @IBOutlet weak var textoMensaje: UITextView!
    
    @IBAction func procesando(sender: AnyObject) {
        
        let objModel = ProcesaDatos()
        let datoRetornado = objModel.procesar(miSegment.selectedSegmentIndex)
        contenedorImg.image = datoRetornado.imagenLugar
        textoMensaje.text = datoRetornado.textoLugar
   
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //publicaremos el contenido de Lima
        contenedorImg.image = UIImage(named: "lima.jpeg")
        textoMensaje.text = "Lima es la ciudad capital de la República del Perú.4 Se encuentra situada en la costa central del país, a orillas del océano Pacífico, conformando una extensa y populosa área urbana conocida como Lima Metropolitana, flanqueada por el desierto costero y extendida sobre los valles de los ríos Chillón, Rímac y Lurín. \n \n Según el censo peruano de 2007, Lima contaba con más de 7,6 millones de habitantes;nota 1 mientras que su aglomeración urbana contaba con más de 8,5 millones de habitantes,6 el 30% de la población peruana, cifras que la convierten en la ciudad más poblada del país."
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

