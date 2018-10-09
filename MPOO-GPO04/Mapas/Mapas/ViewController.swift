//
//  ViewController.swift
//  Mapas
//
//  Created by Germán Santos Jaimes on 10/9/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapita: MKMapView!
    let locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius : Double = 1000

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapita.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }
}

extension ViewController : MKMapViewDelegate{
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else { return }
        let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
        mapita.setRegion(coordinateRegion, animated: true)
    }
}

extension ViewController : CLLocationManagerDelegate{
    func configureLocationServices(){
        if authorizationStatus == .notDetermined{
            print("Pidiendo permisos")
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Permisos autorizados")
        centerMapOnUserLocation()
    }
    
}
