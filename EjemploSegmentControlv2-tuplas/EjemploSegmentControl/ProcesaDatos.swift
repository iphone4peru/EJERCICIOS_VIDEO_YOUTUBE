//
//  ProcesaDatos.swift
//  EjemploSegmentControl
//
//  Created by Fredy Asencios on 11/2/15.
//  Copyright © 2015 Fredy Asencios R. All rights reserved.
//

import UIKit

class ProcesaDatos: NSObject {
    let imagenLima:UIImage = UIImage(named:"lima.jpeg")!
    let textoLima:String = "Lima es la ciudad capital de la República del Perú.4 Se encuentra situada en la costa central del país, a orillas del océano Pacífico, conformando una extensa y populosa área urbana conocida como Lima Metropolitana, flanqueada por el desierto costero y extendida sobre los valles de los ríos Chillón, Rímac y Lurín. \n \n Según el censo peruano de 2007, Lima contaba con más de 7,6 millones de habitantes;nota 1 mientras que su aglomeración urbana contaba con más de 8,5 millones de habitantes,6 el 30% de la población peruana, cifras que la convierten en la ciudad más poblada del país."
    
    let imagenCusco = UIImage(named: "cusco.jpeg")
    let textoCusco = "El Cuzco5 (quechua sureño: Qusqu, Qosqo, pronunciado [ˈqo̝s.qɔ]), o Cusco (grafía oficial moderna), es una ciudad del sureste del Perú ubicada en la vertiente oriental de la Cordillera de los Andes, en la cuenca del río Huatanay, afluente del Vilcanota. Es la capital del Departamento del Cuzco y además, está declarado en la constitución peruana como la capital histórica del país. \n La ciudad de Cuzco según el Instituto Nacional de Estadística e Informática es la octava ciudad más poblada del Perú y alberga en el año 2014 una población de 420.137 habitantes.6"
    
    let imagenArequipa = UIImage(named: "arequipa.jpeg")
    let textoArequipa = "Arequipa es la capital y mayor ciudad del Departamento de Arequipa, es la sede del Tribunal Constitucional y la «Capital Jurídica del Perú».15 También conocida como la «Ciudad Blanca». \n Es la segunda ciudad más poblada del Perú después de Lima, alcanzando el año 2014 los 869,351 habitantes según proyecciones del INEI.16 Arequipa constituye un importante centro industrial y comercial del Perú17 y gracias a su notable actividad industrial es catalogada como la segunda ciudad más industrializada del país;18 dentro de su actividad industrial destacan los productos manufacturados y la producción textil de lana de camélidos con calidad de exportación; por lo que la ciudad mantiene estrechos vínculos comerciales con Chile, Bolivia y Brasil; vínculos con las ciudades conectadas por medio del Ferrocarril del Sur, así como con el puerto de Matarani."
    
    
    func procesar(parametro:Int )->(imagenLugar:UIImage,textoLugar:String){
        
        let imagenRetorno:UIImage?
        let textoRetorno:String?
        
        switch parametro {
        
        case 0 :
            imagenRetorno = imagenLima
            textoRetorno = textoLima
        case 1 :
            imagenRetorno = imagenArequipa
            textoRetorno = textoArequipa
        case 2 :
            imagenRetorno = imagenCusco
            textoRetorno = textoCusco
            
        default :
            
            return (UIImage() ,"")
        
        }
        
        return (imagenRetorno!,textoRetorno!)
    
    }
}
