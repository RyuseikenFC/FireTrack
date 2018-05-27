//
//  CocoDemoVC.swift
//  FireTrack
//
//  Created by Steven on 5/27/18.
//  Copyright © 2018 Steven. All rights reserved.
//

import UIKit

class CocoDemoVC: UIViewController {

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
    //map stuff
    @IBOutlet weak var thor_map: UIImageView!
    @IBOutlet weak var tony_map: UIImageView!
    @IBOutlet weak var drStrange_map: UIImageView!
    @IBOutlet weak var bWidow_map: UIImageView!
    //widow card
    @IBOutlet weak var widoCard: UIImageView!
    @IBOutlet weak var widowSecondCard: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeCard(_ sender: UIButton) {
        widoCard.image = widowSecondCard.image
    }
    


}
