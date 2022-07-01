//
//  ViewController.swift
//  MapTest
//
//  Created by Scholar on 6/28/22.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        // Do any additional setup after loading the view.
        
        
        // set the initial location
        let sourceLocation = CLLocationCoordinate2D(latitude: 40.759011, longitude: -73.984472)
        let houstonTexas = CLLocationCoordinate2D(latitude: 29.759430, longitude: -95.3698)
        
        // add a map pin
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let houstonPlacemark = MKPlacemark(coordinate: houstonTexas, addressDictionary: nil)
        
        // label the map pin
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "Times Square"
        let houstonAnnotation = MKPointAnnotation()
        houstonAnnotation.title = "Houston Kode with Klossy in Texas"
       
        
        if let location = sourcePlacemark.location
        {
            sourceAnnotation.coordinate = location.coordinate
        }
        
        if let location = houstonPlacemark.location
        {
            houstonAnnotation.coordinate = location.coordinate
        }
        
        // show region of choice
        self.mapView.showAnnotations([sourceAnnotation, houstonAnnotation], animated: true)
        
    }


}

