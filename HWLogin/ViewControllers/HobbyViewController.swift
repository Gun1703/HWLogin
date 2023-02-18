//
//  HobbyViewController.swift
//  HWLogin
//
//  Created by 1234 on 18.02.2023.
//

import UIKit

final class HobbyViewController: UIViewController {

    @IBOutlet var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hobbyLabel.text = gleb.person.hobby
    }

}
