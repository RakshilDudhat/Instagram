//
//  ReelsTableViewCell.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 21/03/23.
//

import UIKit

class ReelsTableViewCell: UITableViewCell {

    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var tittleLable: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
