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
    var altitudeManager = CMAltimeter()
    @IBOutlet var pressureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startPressed(_ sender: UIButton) {
        if CMAltimeter.isRelativeAltitudeAvailable() {
            altitudeManager.startRelativeAltitudeUpdates(to: OperationQueue.main) { (data, error) in
                self.altitudeLabel.text = data?.relativeAltitude.stringValue
                self.pressureLabel.text = data?.pressure.stringValue
            }
        } else {
            print("Your iphone doesn't have a barometer :(.")
        }
    }
    
    @IBAction func stopPressed(_ sender: UIButton) {
        altitudeManager.stopRelativeAltitudeUpdates()
    }
}

