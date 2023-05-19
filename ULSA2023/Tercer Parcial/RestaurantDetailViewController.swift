//
//  RestaurantDetailViewController.swift
//  ULSA2023
//
//  Created by ITIT on 04/05/23.
//

import UIKit
import MapKit
class RestaurantDetailViewController: UIViewController {
    @IBOutlet weak var imgRestaurant: UIImageView!
    @IBOutlet weak var MapView: MKMapView!
    var detailRestaurant : restaurantModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "\(detailRestaurant?.name ?? "")"
        imgRestaurant.image = UIImage(named: detailRestaurant?.imgName ?? "")
        setPinOnMap()
    }
    func setPinOnMap() {
        let latitud = Double(detailRestaurant?.latitude ?? "0.0")
        let longitud = Double(detailRestaurant?.longitude ?? "0.0")
        let center = CLLocationCoordinate2D(latitude: latitud ?? 0.0, longitude: longitud ?? 0.0)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.MapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitud ?? 0.0, longitude: longitud ?? 0.0)
        annotation.title = detailRestaurant?.name
          annotation.subtitle = "Ubicación"
        MapView.addAnnotation(annotation)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnCall(_ sender: Any) {
        if let url = URL(string: "tel://\(detailRestaurant?.phone ?? "")"),
           UIApplication.shared.canOpenURL(url) {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func btnWebSite(_ sender: Any) {
        if let url = URL(string: detailRestaurant?.webSite ?? "") {
            UIApplication.shared.open(url)
        }
    }
}
