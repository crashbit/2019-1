//
//  ViewController.swift
//  HolaMapa
//
//  Created by Germán Santos Jaimes on 10/16/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mapa: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapa.delegate = self
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        
        locationManager.startUpdatingLocation()
        mapa.showsUserLocation = true
        
        mapTypeSegmentedControl.addTarget(self, action: #selector(mapTypeChanged), for: .valueChanged)
    }
    
    @IBAction func addAnotation(_ sender: UIButton) {
        let annotation = CoffeeAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 37.331820, longitude: -122.031180)
        
        annotation.title = "Algún lugar"
        annotation.subtitle = "... de un gran país"
        annotation.imageURL = "coffee-pin.png"
        
        mapa.addAnnotation(annotation)
        
    }
    
    
    @objc func mapTypeChanged( segmentedControl: UISegmentedControl){
        switch(segmentedControl.selectedSegmentIndex){
        case 0:
            mapa.mapType = .standard
        case 1:
            mapa.mapType = .satellite
        case 2:
            mapa.mapType = .hybrid
        default:
            mapa.mapType = .standard
        }
    }

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: mapa.userLocation.coordinate , span: MKCoordinateSpan(latitudeDelta: 0.0009, longitudeDelta: 0.0009) )
        
        mapa.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.first)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
       
        if annotation is MKUserLocation{
            return nil
        }
        
        var coffeAnnotationView = mapa.dequeueReusableAnnotationView(withIdentifier: "CoffeeAnnotationView")
        
        if coffeAnnotationView == nil{
            coffeAnnotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "CoffeeAnnotationView")
            
            coffeAnnotationView?.canShowCallout = true
        }else{
            coffeAnnotationView?.annotation = annotation
        }
        
        if let coffeeAnnotation = annotation as? CoffeeAnnotation{
            coffeAnnotationView?.image = UIImage(named: coffeeAnnotation.imageURL)
        }
        
        return coffeAnnotationView
    }

  
    
    
}

