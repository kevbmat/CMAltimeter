//
//  ViewController.swift
//  Altimeter Testing
//
//  Created by Kevin Mattappally on 11/24/18.
//  Copyright © 2018 Kevin Mattappally. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet var altitudeLabel: UILabel!
    var motion = CMMotionManager()
    var altitude = CMAltimeter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

