//
//  UserBirthdayTableViewCell.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import UIKit

class UserBirthdayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var initialsView: UIView!
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var DOBLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initialsView.layer.cornerRadius = initialsView.frame.width / 2
    }
    
    func configureCell(result: Result) {
        if let nameInitial = result.name?.first?.first,
           let lastNameInitial = result.name?.last?.first,
           let name = result.name?.first,
           let lastName = result.name?.last,
           let dob = result.dob?.reformattedDate {
            initialsLabel.text = "\(nameInitial)\(lastNameInitial)"
            nameLabel.text = "\(name) \(lastName)"
            DOBLabel.text = "\(dob)"
           
        }
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
