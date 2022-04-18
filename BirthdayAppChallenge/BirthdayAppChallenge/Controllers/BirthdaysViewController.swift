//
//  ViewController.swift
//  BirthdayAppChallenge
//
//  Created by Renoy Chowdhury on 18/04/22.
//

import UIKit

class BirthdaysViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var results: Results?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib.init(nibName: "UserBirthdayTableViewCell", bundle: nil), forCellReuseIdentifier: "BirthdayCell")
        
        Networking.shared.getResults { res in
            self.results = res
            self.tableView.reloadData()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openDetail", let vc = segue.destination as? BirthdayDetailViewController, let result = sender as? Result {
            vc.result = result
        }
    }
}

extension BirthdaysViewController: UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BirthdayCell", for: indexPath) as? UserBirthdayTableViewCell, let result = results?.results?[indexPath.item] {
            cell.configureCell(result: result)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let result = results?.results?[indexPath.item] {
            performSegue(withIdentifier: "openDetail", sender: result)
        }
        
    }
}
    
