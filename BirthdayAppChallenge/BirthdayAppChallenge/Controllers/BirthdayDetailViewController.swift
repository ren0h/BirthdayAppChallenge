//
//  BirthdayDetailViewController.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import UIKit

class BirthdayDetailViewController: UIViewController {

    @IBOutlet weak var nameInitialLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func GoBackAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}
