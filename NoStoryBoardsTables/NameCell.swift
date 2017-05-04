//
//  NameCell.swift
//  NoStoryBoardsTables
//
//  Created by Macbook on 02/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class NameCell: UITableViewCell {


     let profileImageView = UIImageView()
     let nameLabel = UILabel()
     
     
     
     override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          
       setupView()
     }
     
     func setupView() {
          addSubview(profileImageView)
          profileImageView.translatesAutoresizingMaskIntoConstraints = false
          profileImageView.contentMode = .scaleAspectFit
          profileImageView.layer.masksToBounds = true
          profileImageView.layer.cornerRadius = 25.0
          profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
          profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
          profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
          profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
          
          addSubview(nameLabel)
          nameLabel.translatesAutoresizingMaskIntoConstraints = false
          nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
          nameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 16).isActive = true
          nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
          nameLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
          
          
          
     }
     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     }
     
     
     
}
