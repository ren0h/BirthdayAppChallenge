//
//  BirthdayDetailViewController.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import UIKit

class BirthdayDetailViewController: UIViewController {

    @IBOutlet weak var initialsView: UIView!
    @IBOutlet weak var nameInitialLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var goBackButton: UIButton!
    
    var result: Result?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialsView.layer.cornerRadius = initialsView.frame.height / 2
        goBackButton.layer.cornerRadius = 8
        
        configure()
    }
    
    func configure() {
        if let nameInitial = result?.name?.first?.first, let lastInitial = result?.name?.last?.first {
            nameInitialLabel.text = "\(nameInitial)\(lastInitial)"
        }
        firstNameLabel.text = "\(result?.name?.first ?? "nil") \(result?.name?.last ?? "nil")"
        ageLabel.text = "\(result?.dob?.age ?? 0) YEARS OLD"
    }
    
    @IBAction func GoBackAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}
