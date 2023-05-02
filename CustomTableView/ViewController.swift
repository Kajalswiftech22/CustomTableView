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
        self.tableView.separatorStyle = .none
        
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
        
        cell.contentView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        if ( cell.label.text == "Nepal"){
            cell.label.textColor = UIColor.red
        }
        else if ( cell.label.text == "Canada"){
            cell.label.textColor = UIColor.green
        }
        else if ( cell.label.text == "America"){
            cell.label.textColor = UIColor.blue
        }
        else if ( cell.label.text == "Australia"){
            cell.label.textColor = UIColor.systemTeal
        }
        else if ( cell.label.text == "London"){
            cell.label.textColor = UIColor.purple
        }
        else if ( cell.label.text == "Singapore"){
            cell.label.textColor = UIColor.systemBrown
        }
        else if ( cell.label.text == "China"){
            cell.label.textColor = UIColor.systemOrange
        }
        
        if (indexPath.row % 2 == 0) {
               cell.contentView.layer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1))
               cell.iconImageView.layer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1))
               cell.label.layer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1))
           }
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowwAt indexPath: NSIndexPath) ->
    CGFloat{
        return UITableView.automaticDimension
    }
    
}

