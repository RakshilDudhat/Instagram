//
//  FeedAPITableViewCell.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 27/03/23.
//

import UIKit

class FeedAPITableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var iconLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
