//
//  WellcomeViewController.swift
//  HWLogin
//
//  Created by 1234 on 14.02.2023.
//

import UIKit

final class WellcomeViewController: UIViewController {
    
    @IBOutlet var wellcomeLabel: UILabel!
    
    var wellcomeText = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeLabel.text = "Hello, \(wellcomeText)!"
    }

}
