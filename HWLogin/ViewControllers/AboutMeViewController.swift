//
//  AboutMeViewController.swift
//  HWLogin
//
//  Created by 1234 on 18.02.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet var myPhoto: UIImageView!
    @IBOutlet var age: UITextField!
    @IBOutlet var edycation: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myPhoto.layer.cornerRadius = myPhoto.frame.size.width / 2
        
        age.text = gleb.person.age
        edycation.text = gleb.person.education
    }
}
