//
//  ViewController.swift
//  CustomTableView
//
//  Created by intern on 4/30/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    struct country{
        let title: String
        let imageName: String
    }
    
    let data: [country] = [
        country(title: "Nepal", imageName: "Nepal"),
        country(title: "America", imageName: "America"),
        country(title: "Canada", imageName: "Canada"),
        country(title: "Australia", imageName: "Australia"),
        country(title: "London", imageName: "London"),
        country(title: "Singapore", imageName: "Singapore"),
        country(title: "China", imageName: "China")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let country = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = country.title
        cell.iconImageView.image = UIImage(named: country.imageName)
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowwAt indexPath: NSIndexPath) ->
    CGFloat{
        return UITableView.automaticDimension
    }
    
}

