//
//  MapViewController.swift
//  ULSA2023
//
//  Created by ITIT on 27/04/23.
//

import UIKit
import MapKit
class MapViewController: UIViewController,   CLLocationManagerDelegate {
 
        let locationManager = CLLocationManager()
        @IBOutlet weak var mapView: MKMapView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // mapView.delegate = self
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        // Do any additional setup after loading the view.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else {
            return
        }
        print("locations = \(locValue.latitude)\(locValue.longitude)")
        
        if let location = locations.last {
            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01,longitudeDelta: 0.01))
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = locValue
            annotation.title = "ULSA"
            annotation.subtitle = "CHIHUAHUA"
            mapView.addAnnotation(annotation)
        }
    }
    @IBAction func btnEmergency(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

