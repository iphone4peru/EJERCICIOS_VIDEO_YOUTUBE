//
//  ViewController.swift
//  Mapa
//
//  Created by Christian Quicano on 9/6/15.
//  Copyright (c) 2015 iphone4peru.com. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //agregar un punto al mapa
        var annotation = MKPointAnnotation()
        annotation.title = "IPHONE4PERU"
        annotation.subtitle = "Especialistas en desarrolllo iOS"
        annotation.coordinate = CLLocationCoordinate2DMake(-12.088184, -77.023585)
        
        mapView.addAnnotation(annotation)
        
        //acercamiento a la región
        var nuevaRegion = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 1500, 1500)
        mapView.setRegion(nuevaRegion, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

