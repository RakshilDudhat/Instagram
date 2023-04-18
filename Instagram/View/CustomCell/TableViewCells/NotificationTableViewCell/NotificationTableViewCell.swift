//
//  NotificationTableViewCell.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 22/03/23.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var likePostImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImageIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageIcon.layer.cornerRadius = 25
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
