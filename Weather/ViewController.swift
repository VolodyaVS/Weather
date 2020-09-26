//
//  ViewController.swift
//  Weather
//
//  Created by Vladimir Stepanchikov on 26.09.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidity: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTempuratureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

