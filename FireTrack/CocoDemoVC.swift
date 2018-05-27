//
//  CocoDemoVC.swift
//  FireTrack
//
//  Created by Steven on 5/27/18.
//  Copyright © 2018 Steven. All rights reserved.
//

import UIKit
import MapKit

class CocoDemoVC: UIViewController, MKMapViewDelegate {

    var capPin:MyHero!
    @IBOutlet weak var mapView: MKMapView!
    //labels! here!
    //tony labels heart rate, temp, CO, Altitude
    @IBOutlet weak var tony_HR: UILabel!
    @IBOutlet weak var tony_T: UILabel!
    @IBOutlet weak var tony_CO: UILabel!
    @IBOutlet weak var tony_A: UILabel!
    //DR Strange
    @IBOutlet weak var strange_HR: UILabel!
    @IBOutlet weak var strange_T: UILabel!
    @IBOutlet weak var strang_CO: UILabel!
    @IBOutlet weak var Strang_A: UILabel!
    //Widow
    @IBOutlet weak var widow_HR: UILabel!
    @IBOutlet weak var widow_T: UILabel!
    @IBOutlet weak var widow_CO: UILabel!
    @IBOutlet weak var widow_A: UILabel!
    //thor
    @IBOutlet weak var thor_HR: UILabel!
    @IBOutlet weak var thor_T: UILabel!
    @IBOutlet weak var thor_CO: UILabel!
    @IBOutlet weak var thor_A: UILabel!
    //Cap
    @IBOutlet weak var cap_HR: UILabel!
    @IBOutlet weak var cap_T: UILabel!
    @IBOutlet weak var cap_CO: UILabel!
    @IBOutlet weak var cap_A: UILabel!
    @IBOutlet weak var not_con: UILabel!
    
    //map stuff
    @IBOutlet weak var thor_map: UIImageView!
    @IBOutlet weak var tony_map: UIImageView!
    @IBOutlet weak var drStrange_map: UIImageView!
    @IBOutlet weak var bWidow_map: UIImageView!
    @IBOutlet weak var cap_map: UIImageView!
    //widow card
    @IBOutlet weak var widoCard: UIImageView!
    @IBOutlet weak var widowSecondCard: UIImageView!
    //cap Card
    @IBOutlet weak var cap_card: UIImageView!
    @IBOutlet weak var green_card: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(37.34770145738029, -121.93935963814084), 150, 150), animated: false)
        
        mapView.delegate = self
        //let capPin = MyHero(title: " ", subtitle:" ", coordinate: CLLocationCoordinate2DMake(37.34748037416735, -121.93843820994698))
        
        //mapView.addAnnotation(capPin)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: capPin, reuseIdentifier: "cap")
        annotationView.image = UIImage(named: "cap" )
        let transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        annotationView.transform = transform
        
        annotationView.canShowCallout = true
        annotationView.isDraggable = true
        return annotationView
    }
    
    
    @IBAction func changeCard(_ sender: UIButton) {
        widoCard.image = widowSecondCard.image
        widow_CO.text = "9 PPM"
        widow_HR.text = "14 BPM"
        
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        let capPin = MyHero(title: " ", subtitle:" ", coordinate: CLLocationCoordinate2DMake(37.34769891630221, -121.93923418825972))
        
        mapView.addAnnotation(capPin)
        
        cap_card.image = green_card.image
        not_con.isHidden = true
        cap_A.isHidden = false
        cap_CO.isHidden = false
        cap_T.isHidden = false
        cap_HR.isHidden = false
        //cap_map.isHidden = false
        
    }
    
    @IBAction func save_BW(_ sender: UIButton) {
        //UIView.animate(withDuration: 1.0) {
          //  self.cap_map.frame.origin.y -= 25
        //}
    }
    
    @IBAction func change_back(_ sender: UIButton) {
        widoCard.image = green_card.image
        widow_CO.text = "6 PPM"
        widow_HR.text = "14 BPM"
    }
    
    
    


}
