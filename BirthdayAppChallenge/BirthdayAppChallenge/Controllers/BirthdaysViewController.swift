//
//  ViewController.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import UIKit

class BirthdaysViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib.init(nibName: "UserBirthdayTableViewCell", bundle: nil), forCellReuseIdentifier: "BirthdayCell")
    }


}

extension BirthdaysViewController: UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BirthdayCell", for: indexPath) as? UserBirthdayTableViewCell {
            cell.initialsLabel.text = "RC"
            cell.nameLabel.text = "renoy"
            cell.DOBLabel.text = "13121991"
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "openDetail", sender: self)
    }
}
    
