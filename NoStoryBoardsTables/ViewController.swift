//
//  ViewController.swift
//  NoStoryBoardsTables
//
//  Created by Macbook on 02/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

     
     let names = ["Mandy", "Paul", "Michael", "Harry"]
     let images = ["burger", "pizza", "sandwich", "taco"]
     

     override func viewDidLoad() {
          super.viewDidLoad()
          
          
          
          tableView.delegate = self
          tableView.dataSource = self
          tableView.register(NameCell.self, forCellReuseIdentifier: "cell")
      
     }
     
     override func numberOfSections(in tableView: UITableView) -> Int {
          return 4
     }
     
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return names.count
     }
     
     
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NameCell
          
          cell.nameLabel.text =  names[indexPath.row]
          
          cell.profileImageView.image = UIImage(named: images[indexPath.row])
                    return cell
          
     }
     
     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 70
     }
}

